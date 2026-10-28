"""Validated receipt selection for the triple classification (audit findings F1, F2 and F3).

Nothing is counted closed unless its evidence is checked here:

* a certifier row counts only if its binding is the expected one, its index is in range, its seed_sha256 and
  radius_hex match the record it claims, and a successful row's pattern accounting is complete (every pattern
  CERTIFIED or EXCLUDED, their number equal to patterns_after_column_filter);
* in a split row file, only rows carrying the file's *current* binding count (the binding of its last valid row,
  which must be one of the expected split bindings); an older success never replaces current missing or
  inconclusive work;
* a split sub-ball counts as closed only with a Stage C precondition pass (audit F2): either recorded in its row by
  the guarded split.py, or a sidecar row from stagec_guard.py with a known guard hash and the same seed_sha256;
* a split cover counts only if it is re-validated (audit F3): parent_sha256 equals the parent record's hash; the
  cells are exactly the level-L dyadic cells meeting the closed ball (decided exactly); every built sub-ball keeps the
  parent's frame, orientation, k and label radius, and its radius satisfies r' >= 2 h r + ||Mth^-1 delta||, recomputed
  in Arb from the two records (delta the centre rounding, reduced mod 2 pi).  Unbuilt cells leave the parent open.
"""
import gzip, hashlib, itertools, json, math, os, sys
from fractions import Fraction as Fr

CLOSED = ('CERTIFIED', 'CERTIFIED EMPTY')


def sha_bytes(b): return hashlib.sha256(b).hexdigest()
def sha_file(p): return sha_bytes(open(p, 'rb').read())
def record_sha(rec): return sha_bytes(json.dumps(rec, sort_keys=True).encode())


def read_jsonl(path):
    out = []
    if path and os.path.exists(path):
        for line in open(path):
            try:
                out.append(json.loads(line))
            except ValueError:
                pass                                   # an interrupted final line
    return out


def misses_ball(uc, h):
    return sum(max(abs(Fr(x)) - Fr(h), 0) ** 2 for x in uc) > 1


class Validator:
    def __init__(self, tc_tree, atlas, split_versions, guard_paths=(), refinements=()):
        fn = os.path.join(tc_tree, 'proof/theorems/TC_triple_classification/family_neighbourhoods')
        if fn not in sys.path: sys.path.insert(0, fn)
        cwd = os.getcwd(); os.chdir(fn)
        try:
            import run as R
        finally:
            os.chdir(cwd)
        self.R = R
        self.native = R.binding(atlas)['id']                  # also enforces the pinned atlas hash
        self.atlas_sha = sha_file(atlas)
        self.seeds = json.load(gzip.open(atlas, 'rt'))['seeds']
        self.sources = {str(p.relative_to(R.ROOT)): sha_file(p) for p in R.source_paths()}
        self.versions = []
        for sp in split_versions:
            v = {'split.py': sha_file(sp)}
            g = os.path.join(os.path.dirname(sp), 'stagec_guard.py')
            if 'stagec_guard.py' in open(sp).read() and os.path.exists(g):
                v['stagec_guard.py'] = sha_file(g)
            self.versions.append(v)
            for m in refinements:                      # the same split code run with the sharper bound
                self.versions.append(dict(v, **{'moving_integrated.py': sha_file(m)}))
        self.guards = {sha_file(g) for g in guard_paths}
        for v in self.versions:
            if 'stagec_guard.py' in v: self.guards.add(v['stagec_guard.py'])
        self._docs = {}

    # ----- rows -----
    def split_bindings(self, sa_sha):
        ids = set()
        for v in self.versions:
            files = dict(self.sources, **v)
            value = dict(schema='tc-native-allk-v1+split', atlas_sha256=sa_sha, sources=files, precision=160)
            ids.add(sha_bytes(json.dumps(value, sort_keys=True).encode()))
        return ids

    def row_ok(self, row, records, expected):
        """The row's own claims check out against the record it names and the expected bindings."""
        try:
            i = row['index']
            if isinstance(i, bool) or not isinstance(i, int) or not 0 <= i < len(records): return False
            if row.get('binding') not in expected: return False
            if row['status'] in CLOSED:
                rec = records[i]
                if row.get('seed_sha256') != record_sha(rec): return False
                if row.get('radius_hex') != float(self.R.SC.Ball(rec).r).hex(): return False
                pats = row.get('patterns', [])
                if len(pats) != row.get('patterns_after_column_filter'): return False
                if any(p.get('status') not in ('CERTIFIED', 'EXCLUDED') for p in pats): return False
                if row['status'] == 'CERTIFIED' and not any(p['status'] == 'CERTIFIED' for p in pats): return False
                if row['status'] == 'CERTIFIED EMPTY' and any(p['status'] != 'EXCLUDED' for p in pats): return False
            return True
        except Exception:                               # noqa: BLE001 -- malformed evidence counts as absent
            return False

    def select(self, rows, records, expected):
        """index -> status, from rows with the current binding only (the binding of the last valid row)."""
        valid = [r for r in rows if self.row_ok(r, records, expected)]
        if not valid: return {}, None
        current = valid[-1]['binding']
        out = {}
        for r in valid:
            if r['binding'] != current: continue
            if r['status'] in CLOSED: out[r['index']] = r
            elif r['index'] not in out: out[r['index']] = r
        return out, current

    def native_rows(self, rows):
        sel, _ = self.select(rows, self.seeds, {self.native})
        return sel

    # ----- covers -----
    def cover_ok(self, info, parent_rec, sub_seeds):
        """None if the split cover re-validates, else the reason."""
        from flint import arb, arb_mat, ctx
        if info.get('parent_sha256') != record_sha(parent_rec): return 'parent hash'
        L = info['level']; h = Fr(1, 2 ** L)
        want = sorted(c for c in itertools.product(range(2 ** L), repeat=4)
                      if not misses_ball([-1 + (2 * ci + 1) * h for ci in c], h))
        cells = [tuple(e['cell']) for e in info['cover']]
        if sorted(cells) != want or len(set(cells)) != len(cells): return 'cell set'
        subs = [e['sub'] for e in info['cover'] if 'sub' in e]
        if len(set(subs)) != len(subs) or sorted(subs) != list(range(len(sub_seeds))): return 'sub indices'
        P = self.R.SC.Ball(parent_rec)
        ctx.prec = 224
        Mth = [[arb(float(P.Mth[i, j])) for j in range(4)] for i in range(4)]
        Minv = arb_mat(Mth).inv()
        TP = 2 * arb.pi()
        for e in info['cover']:
            if 'sub' not in e: continue
            s = sub_seeds[e['sub']]
            if (s['Mth'] != parent_rec['Mth'] or s['o'] != parent_rec['o'] or s['k'] != parent_rec['k']
                    or s['label_radius'] != parent_rec['label_radius']):
                return 'sub frame'
            uc = [-1 + (2 * ci + 1) * h for ci in e['cell']]
            t0 = [float.fromhex(x) for x in s['theta0']]
            dl = []
            for i in range(4):
                c = arb(float(P.theta0[i])) + sum((Mth[i][j] * arb(float(P.r)) * arb(float(uc[j])) for j in range(4)),
                                                  arb(0))
                x = c - arb(t0[i])
                x = x - round(float((x / TP).mid())) * TP
                dl.append(x)
            v = Minv * arb_mat([[x] for x in dl])
            nn = sum((v[i, 0] * v[i, 0] for i in range(4)), arb(0))
            bound = arb(float(2 * h)) * arb(float(P.r)) + (arb(0) if nn.upper() <= 0 else nn.upper().sqrt())
            if not arb(float.fromhex(s['r'])) >= bound: return 'containment'
        return None


def load_split(path):
    doc = json.load(gzip.open(path, 'rt'))
    return doc['seeds'], (doc.get('info') or {}).get('split'), sha_file(path)


def tangent_point(cell, level):
    """The unique point of the closed cell (level L, integer index) on the closed unit ball when the cell only touches
    it (nearest point at squared distance exactly 1), else None.  By strict convexity of the squared norm no other
    point of the cell lies in the ball.  Exact rationals."""
    h = Fr(1, 2 ** level)
    p, d2 = [], Fr(0)
    for ci in cell:
        lo, hi = -1 + 2 * ci * h, -1 + 2 * (ci + 1) * h
        x = lo if lo > 0 else hi if hi < 0 else Fr(0)
        p.append(x); d2 += x * x
    return p if d2 == 1 else None


def cell_contains(cell, level, p):
    h = Fr(1, 2 ** level)
    return all(-1 + 2 * ci * h <= x <= -1 + 2 * (ci + 1) * h for ci, x in zip(cell, p))
