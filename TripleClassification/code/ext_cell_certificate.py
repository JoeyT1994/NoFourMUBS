#!/usr/bin/env python3
"""PR #4's whole-cell check (plane_cell_certificate.check) with one more pattern witness: the separable projector of
the TC_joint_kw response (projector/, PROJECTOR_REPORT.md).

Everything else is the pinned check, copied unchanged: the cover, C1, the H normal form and Stage C are rebuilt from
the cell's H record; every column's proof tree is replayed (verify_tree) to give its tubes; every pattern needs a
witness. Two witnesses are added. The moving-frame secant witness {'colours', 'columns', 'secant'} names one column
and two anchors of the pattern; moving_secant_certificate.check_columns rebuilds the anchors' tubes from their phase
balls and proves, in Arb, a whole-phase-ball secant bound and a positive transverse margin (REPORT.md). The projector
witness {'colours', 'columns', 'projector'} names the pattern's six colours (columns = the
pattern itself, in the witness's order) and a stored 86-number proposal; projector_union_hook.replay checks, in Arb,
that one common row functional and six unbiasedness multipliers give a strictly positive sum of the six columns'
minimum lower bounds over every tube of every column (projector_joint_certificate.certify). No tube tuple is
enumerated and nothing numerical is accepted. The gamma witness {'colours', 'columns', 'gamma'} (the AntiGravity
attempt's proposal format) names the pattern's six colours, a mode L or K and an alignment (a, b); the pinned
gamma_test bounds (prep, score_upper) are recomputed in Arb from the six phase balls of the rebuilt cover, and the
pattern is CLASSIFIED when the upper bound of Gamma_F (of L = H*K/sqrt6 or of K) is <= 19/50 (the Fourier-neighbourhood
theorem) or below the cell's own certified lower bound g_cell of Gamma_F(H) (the minimum-transition theorem): the same
two discharges as the audit's gamma rules 'fourier' and 'ordering', applied to one pattern of one cell.

The pinned checker tree is TC_ROOT, or the tree this file is installed in (pr4ext). install() replaces plane_cell_certificate.check by this check in the
calling process, so plane_frontier_certificate.run (a replay) and plane_tree_certificate.check (a tree) use it.
"""
import fcntl, hashlib, json, os, sys, time
from pathlib import Path

HERE = Path(__file__).resolve().parent
if os.environ.get('TC_ROOT'): ROOT = Path(os.environ['TC_ROOT']).resolve()
elif (HERE / 'plane_cell_certificate.py').exists(): ROOT = HERE.parents[1]       # installed inside a checker tree (pr4ext)
else: raise ImportError('TC_ROOT (the pinned checker tree) is required')
for d in (str(HERE / 'projector'), str(ROOT / 'TripleClassification/code')):   # the pinned tree first; never this
    if d in sys.path: sys.path.remove(d)                                            # file's folder (other versions
    sys.path.insert(0, d)                                                           # of some pinned modules)
import plane_cell_certificate as Whole
_PINNED_CHECK = getattr(Whole, '_pinned_check', Whole.check); Whole._pinned_check = _PINNED_CHECK   # before install()
P_ = Path(Whole.__file__).resolve()
if ROOT not in P_.parents: raise ImportError('plane_cell_certificate is not from TC_ROOT: %s' % P_)
import anchored_column_certificate as _A
if ROOT not in Path(_A.__file__).resolve().parents: raise ImportError('anchored_column_certificate is not from TC_ROOT')
import plane_column_certificate as P
import plane_joint_certificate as Joint
import projector_union_hook as Hook
import projector_joint_certificate as Proj
import moving_secant_certificate as Secant
import gamma_test as GT
if ROOT not in Path(GT.__file__).resolve().parents: raise ImportError('gamma_test is not from TC_ROOT')
from fractions import Fraction
from flint import arb, acb

EXTENSION = [HERE / 'ext_cell_certificate.py', HERE / 'projector/projector_union_hook.py',
             HERE / 'projector/projector_joint_certificate.py', HERE / 'projector/moving_secant_certificate.py']        # the acceptance path added to the pinned check


def extension_sha256():
    d = {('TripleClassification/code/' + str(p.relative_to(HERE))): hashlib.sha256(p.read_bytes()).hexdigest() for p in EXTENSION}
    d['TripleClassification/code/gamma_test.py'] = hashlib.sha256(Path(GT.__file__).read_bytes()).hexdigest()
    return d


def gamma_bound(ctx, columns, clique, g, cache):
    """Arb upper bound (exact binary64) of Gamma_F over the pattern, as gamma_test.pattern computes it, for the
    witness's mode and alignment. Column data come from the rebuilt cover's phase balls (v0, phase_radius)."""
    Hc, s, dH = ctx['Hc'], ctx['s'], ctx['dH']
    for c in clique:
        if c in cache: continue
        v0 = [arb(columns[c]['v0'][a]) for a in range(6)]
        pr = (arb(columns[c]['phase_radius']) + sum((arb(v0[a].rad()) for a in range(6)), arb(0))).upper()
        Kc = [acb(0, v0[a]).exp() for a in range(6)]
        Lc = [sum((Hc[a][r].conjugate() * Kc[a] for a in range(6)), acb(0)) / arb(6).sqrt() for r in range(6)]
        cache[c] = dict(v0=v0, prs=arb(GT.up(arb(pr))), m=min(arb(GT.lo(abs(Lc[r]))) for r in range(6)),
                        dk=arb(GT.up(s * pr + dH)), PL=[Lc[r].arg() for r in range(6)])
    cd = [cache[c] for c in clique]
    if g['mode'] == 'L':
        m = min(x['m'] for x in cd); dk = [x['dk'] for x in cd]
        P.require(m > 0, 'gamma L witness: an entry of L_c may vanish')
        xm = arb(GT.up(max(dk) / m))
        P.require(xm < 1, 'gamma L witness: motion not below the modulus')
        kappa = arb(GT.up(xm.asin() / xm)) if xm > 0 else arb(1)            # asin(x)/x increases on [0, 1)
        E = arb(GT.up(kappa * sum((d * d for d in dk), arb(0)).sqrt() / m))
        centre = GT.score_upper([[cd[k]['PL'][r] for k in range(6)] for r in range(6)], g['a'], g['b'], arb)
        return GT.up(arb(centre) + arb(2) / 5 * E)
    centre = GT.score_upper([[cd[k]['v0'][r] for k in range(6)] for r in range(6)], g['a'], g['b'], arb)
    return GT.up(arb(centre) + arb(2) / 5 * sum((x['prs'] * x['prs'] for x in cd), arb(0)).sqrt())


def validate_witnesses(cliques, witnesses, keys):
    """Whole.validate_witnesses, plus the projector witness: its columns are the whole pattern, each once."""
    P.require(len(witnesses) == len(cliques), 'incomplete pattern accounting')
    used = set()
    for clique, w in zip(cliques, witnesses):
        P.require(w['colours'] == clique, 'complete-cover pattern changed')
        chosen = w['columns']
        if 'projector' in w:
            P.require(set(w) == {'colours', 'columns', 'projector'} and sorted(chosen) == sorted(clique) and len(chosen) == 6 and
                      all(type(c) is int for c in chosen) and w['projector'].get('order') == chosen, 'invalid projector witness')
        elif 'gamma' in w:                      # bounds from the six phase balls of the cover; no column proof is used
            g = w['gamma']
            P.require(set(w) == {'colours', 'columns', 'gamma'} and chosen == clique and isinstance(g, dict) and
                      set(g) == {'mode', 'a', 'b', 'g_up_hex'} and g['mode'] in ('L', 'K') and
                      all(isinstance(g[k], list) and all(type(i) is int for i in g[k]) and sorted(g[k]) == [0, 1, 2, 3, 4, 5]
                          and g[k][0] == 0 for k in ('a', 'b')), 'invalid gamma witness')
            continue
        elif 'secant' in w:                     # its anchor tubes are rebuilt from the cover; no column proof is used
            x = w['secant']; idx = [x.get('column'), *(x.get('anchors') or [])]
            P.require(set(w) == {'colours', 'columns', 'secant'} and len(idx) == 3 and all(type(i) is int and 0 <= i < 6 for i in idx)
                      and len(set(idx)) == 3 and chosen == [clique[i] for i in idx], 'invalid secant witness')
            continue
        else:
            P.require((1 <= len(chosen) <= 6 if 'joint' in w else len(chosen) in (1, 2)) and len(set(chosen)) == len(chosen) and
                      all(type(c) is int and c in clique for c in chosen), 'invalid pattern witness')
        used.update(chosen)
    P.require(keys == {str(c) for c in used}, 'missing or unused column proof')


NEW_WITNESSES = ('projector', 'secant', 'gamma')


def needs_extension(proposal):
    return any(k in w for w in proposal.get('witnesses', []) for k in NEW_WITNESSES)


# Leaf cache (live audit only, as the plane replay cache; never verify_ball.py): TC_LEAF_CACHE names a directory with
# one append-only file per ball, leaf_cache.b<ball>.jsonl. An entry binds the exact input file and proposal to the three
# fields plane_tree_certificate.check reads from a certified leaf (status, patterns_total, dependencies_sha256), and is
# used only while every file in that dependency list still has the recorded hash: a change to a checker file reopens
# exactly the leaves whose check depends on it (a leaf without the new witnesses depends on the pinned files only).
_leaf = {}; _filesha = {}


def _sha_rel(rel):
    """The current SHA-256 of a dependency named as a receipt names it: the extension's files from this file's folder
    (as extension_sha256 records them), everything else from the checker tree."""
    if rel not in _filesha:
        ext = {'TripleClassification/code/' + str(p.relative_to(HERE)): p for p in EXTENSION}
        q = ext.get(rel, ROOT / rel); _filesha[rel] = P.digest(q) if q.is_file() else None
    return _filesha[rel]


def _leaf_key(path, proposal):
    return hashlib.sha256(json.dumps([P.digest(path), hashlib.sha256(json.dumps(proposal, sort_keys=True).encode()).hexdigest()]).encode()).hexdigest()


def _leaf_file(path):
    d = os.environ.get('TC_LEAF_CACHE')
    if not d: return None
    return Path(d) / ('leaf_cache.b%d.jsonl' % int(P.read_json(path)['ball']))


def _leaf_get(f, k):
    if f not in _leaf:
        _leaf[f] = {}
        try:
            for line in open(f):
                try: x = json.loads(line); _leaf[f][x['key']] = x
                except (ValueError, KeyError): pass
        except OSError: pass
    x = _leaf[f].get(k)
    if x and x['status'] in ('CERTIFIED_EMPTY_RECORDED_H_CELL', 'CERTIFIED_CLASSIFIED_RECORDED_H_CELL') and \
            all(_sha_rel(rel) == h for rel, h in x['dependencies_sha256'].items()):
        return dict(status=x['status'], patterns_total=x['patterns_total'], dependencies_sha256=x['dependencies_sha256'], leaf_cache=True)
    return None


def _leaf_put(f, k, r):
    line = json.dumps(dict(key=k, status=r['status'], patterns_total=r['patterns_total'], dependencies_sha256=r['dependencies_sha256'])) + '\n'
    with open(f, 'a') as h:
        fcntl.flock(h, fcntl.LOCK_EX); h.write(line); h.flush(); fcntl.flock(h, fcntl.LOCK_UN)


def check(path, proposal):
    """The pinned check for a proposal without the new witnesses, else the extended check; with TC_LEAF_CACHE set, a
    certified result is recorded and reused (see above)."""
    f = _leaf_file(path); k = _leaf_key(path, proposal) if f else None
    if f:
        r = _leaf_get(f, k)
        if r: return r
    r = _ext_check(path, proposal) if needs_extension(proposal) else _PINNED_CHECK(path, proposal)
    if f and r.get('status') in ('CERTIFIED_EMPTY_RECORDED_H_CELL', 'CERTIFIED_CLASSIFIED_RECORDED_H_CELL'): _leaf_put(f, k, r)
    return r


def _ext_check(path, proposal):
    start = time.monotonic(); s, model, C, binding, columns, cliques = Whole.complete_cover(path)
    P.require(proposal.get('schema') == 'tc-plane-cell-proposal-v1' and
              proposal.get('snapshot_sha256') == binding['snapshot_sha256'] and
              proposal.get('record_sha256') == s['record_sha256'], 'whole-cell proposal binding mismatch')
    validate_witnesses(cliques, proposal['witnesses'], set(proposal['columns']))
    tubes = {}; summaries = []
    for key, item in proposal['columns'].items():
        c = int(key); col = P.Column(model, columns[c], P.hex_array(item['weak'], (2, 5)))
        stats, tubes[c] = P.verify_tree(col, item['tree'], item['roots'], C, root_modes=item.get('root_modes'))
        summaries.append(dict(colour=c, leaves=stats, source_radius=str(col.radius), epsilons=[str(e) for p, e in tubes[c].values()]))
    checked = {}; rows = []; root_pairs = {}; root_scalars = {}; projector = []; gctx = None; gcache = {}
    for n, (clique, w) in enumerate(zip(cliques, proposal['witnesses'])):
        chosen = w['columns']
        if 'projector' in w:                    # the added witness: every tube of the six complete column covers
            r = Hook.replay(model, {c: tubes[c] for c in chosen}, w['projector'])
            P.require(r['status'] == 'EXCLUDED_GIVEN_TUBE_COVERS', 'projector witness does not exclude this pattern')
            projector.append(dict(number=n, colours=clique, margin=r['margin'], tubes=r['tube_count']))
        elif 'gamma' in w:                      # Fourier (<= 19/50) or ordering (< g_cell): every triple here is classified
            if gctx is None: gctx = GT.prep(model, Fraction(0))              # g_h = the cell's own certified g_cell
            g_up = gamma_bound(gctx, columns, clique, w['gamma'], gcache)
            fourier, ordering = Fraction(g_up) <= Fraction(19, 50), Fraction(g_up) < gctx['g_h']
            P.require(fourier or ordering, 'gamma witness: neither the Fourier nor the ordering bound holds')
            projector.append(dict(number=n, colours=clique, gamma_mode=w['gamma']['mode'], g_up_hex=g_up.hex(),
                                  g_cell_hex=float(gctx['g_h']).hex(), fourier=fourier, ordering=ordering))
        elif 'secant' in w:                     # the pattern's six phase balls, from the rebuilt cover
            cols = [dict(v0=list(columns[c]['v0']), radius=arb(columns[c]['phase_radius']), colour=c) for c in clique]
            r = Secant.check_columns(model, cols, w['secant'])         # raises unless the pattern is excluded
            projector.append(dict(number=n, colours=clique, secant_margin=r['transverse_margin']))
        elif 'joint' in w: Joint.exclude(model, tubes, chosen, w['joint'], pair_cache=root_pairs, scalar_cache=root_scalars, allow_known=True)
        elif len(chosen) == 1: P.require(not tubes[chosen[0]], 'claimed empty column has surviving tubes')
        else:
            key = tuple(sorted(chosen))
            if key not in checked:
                margins = [P.pair_margin(a, ea, b, eb) for a, ea in tubes[key[0]].values() for b, eb in tubes[key[1]].values()]
                if not all(m > 0 for m in margins): raise ArithmeticError('a captured pair may be orthogonal')
                checked[key] = [str(m) for m in margins]
        rows.append(dict(number=n, colours=clique, columns=chosen,
                         status='CLASSIFIED' if (w.get('joint', {}).get('known') or 'gamma' in w) else 'EXCLUDED'))
    classified = any(row['status'] == 'CLASSIFIED' for row in rows)
    binding['dependencies_sha256'].update(extension_sha256())
    return dict(schema='tc-plane-cell-receipt-v1', status='CERTIFIED_CLASSIFIED_RECORDED_H_CELL' if classified else
                'CERTIFIED_EMPTY_RECORDED_H_CELL', **binding,
                subatlas=s['subatlas'], sub=s['sub'], complete_K_cover_rebuilt=True, patterns_total=len(cliques),
                patterns=rows, columns=summaries, pairs=[dict(colours=list(k), margins=v) for k, v in sorted(checked.items())],
                projector_patterns=projector, seconds=time.monotonic() - start,
                scope=('Every completing basis K on the entire recorded H cell has the certified balanced order-three symmetry. '
                       if classified else 'Every completing basis K on the entire recorded H cell is excluded. ') +
                      'C1, H normal form, Stage C preconditions and the complete K cover are rebuilt. Some patterns may be '
                      'excluded by the separable projector or secant witness, or classified by the gamma witness (Fourier-neighbourhood '
                      'or minimum-transition theorem; ext_cell_certificate.py). Original-ball closure '
                      'additionally requires the external geometric cover of that original ball.')


def install():
    """Use this check wherever the pinned code calls plane_cell_certificate.check in this process."""
    Whole.check = check
