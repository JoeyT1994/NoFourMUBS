"""Kernel data for the record side of the seed atlas (FORMAT §2, §6): the records' `RecordCert`s, their `rec` boundary
boxes, the record-shell traversal and the Fourier anchor (`KernelAtlas/Seed/Rec*.lean`, `docs/KERNEL_SEED.md`).

Usage (repository root):
  python3 kernel_atlas/generators/seed_records.py record [--cert FILE --rec I] [--name F6] [--out DIR]
      the record's `RecordCert` modules (`KernelAtlas/Seed/Rec<name>/`, namespace `NoFourMUBs.KernelAtlas.Seed.Rec<name>`)
      through the old per-record pipeline, unchanged: export_record.py (Data), export_v2.py --all --labels --search
      (T2Data, H2Slab*, L2Data, CoverH2), export_joint.py (Graph2, Hints2, Edg*, Clq*, StageC2), knormal.py --v2
      (Frame, Sigma, Record2).  Those generators read `proof/atlas/results/atlas_certificate.json.gz`; here they run
      in a subprocess whose `gzip.open` serves that path from a one-record stand-in file (the record at index 0), and
      the output is renamed (`Rec0` -> `Seed.Rec<name>`) with the atlas-table references (`Table.c0`, `Table.r0`)
      replaced by the record's own centre and radius literals, then sealed (`kpack.seal`).  Nothing else changes: the
      kernel checks the same things as for an atlas Record.
  python3 kernel_atlas/generators/seed_records.py build MODULE ... [--procs 2] [--logdir DIR]
      build the stale `KernelAtlas.*` modules of the import closure with `lake build`, one module per call, in
      dependency order, at most --procs at once (Lake has no job limit, and a record's modules take 7-20 GB each);
      CPU time and peak memory per module (DIR/build.jsonl, default kernel_atlas/results/seed_local/build_logs).
  python3 kernel_atlas/generators/seed_records.py demo --emit DIR [--name F6] [--maxl 6] [--level 3] [--rt 1/4]
      the prototype data (`DIR/Data.lean`): the record's shell traversal and `rec` entries into a synthetic target
      (the record itself under the Γ-symmetry `conj` with rows (0,5,4,3,2,1), whose exact winding fixes F6, with a
      synthetic radius `--rt`), with the exact mirrors' verdicts.

Without --cert, the record is F6's record exactly as the driver builds it (`proof/seed_atlas/driver/record_boundary.py`,
`F6Record`): centre fl(2π jk/6), R = 0.125, label radius 0.03, the frame `Tint` of `BallRecord(phi)`, eta_scale =
r_H (1 + 1e-6) with r_H from `BallRecord.normal_bound`.

Exact mirrors (every integer operation as in Lean):
  * `shell_miss`, `shell_walk`: `Seed/Cover.lean` (`shellMiss`, `walk`) for the record shell;
  * `rec_box`: `BoundaryK.trOK` at the box of a `Bx` (`Seed/RecBoundary.lean`, `recBoxOK`).
"""
import argparse, glob, gzip, json, math, os, re, runpy, subprocess, sys, tempfile, time
from fractions import Fraction as Fr

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.abspath(os.path.join(HERE, '..', '..'))
LEAN = os.path.join(ROOT, 'lean')
SRC = os.path.join(ROOT, 'kernel_atlas', 'lean')
OLEAN = os.path.join(LEAN, '.lake', 'build', 'lib', 'lean')
PY = sys.executable
ATLAS_REL = 'proof/atlas/results/atlas_certificate.json.gz'
sys.path[:0] = [HERE, os.path.join(ROOT, 'proof', 'atlas')]


def q_lit(x):
    x = Fr(x)
    if x.denominator == 1:
        return '(%d : ℚ)' % x.numerator
    return '((%d : ℚ) / %d)' % (x.numerator, x.denominator)


# --------------------------------------------------------------------------------------------- the records
def f6_record(R=0.125, label=0.03):
    """F6's record as `record_boundary.F6Record` builds it (FORMAT §6 fields, hex floats)."""
    import numpy as np
    from ballrecord import BallRecord
    phi = np.array([[2 * math.pi * ((j * k) % 6) / 6 for k in range(6)] for j in range(6)])
    B = BallRecord(phi.reshape(36))
    rH, _ = B.normal_bound(R)
    return dict(phi=[float(x).hex() for x in phi.reshape(36)], R=float(R).hex(), label_radius=float(label).hex(),
                Tint=np.asarray(B.rec.Tint, np.int64).reshape(-1).tolist(), eta_scale=float(rH * (1 + 1e-6)).hex(),
                boundary=[])


def load_record(cert, i):
    d = json.load(gzip.open(cert, 'rt'))
    assert d['format'] == 'seed-atlas-v1'
    return d['records'][i]


def atlas_row(rec):
    """The record as a row of the old atlas certificate (what the old generators read): floats for R and the label
    radius, `Tint` flat (36 x 4 row-major, as in the old certificate)."""
    fh = lambda x: float.fromhex(x) if isinstance(x, str) else float(x)
    return dict(phi=list(rec['phi']), R=fh(rec['R']), label_radius=fh(rec['label_radius']), Tint=list(rec['Tint']))


def centre(rec):
    return [[Fr(float.fromhex(rec['phi'][6 * j + i])) for i in range(6)] for j in range(6)]


def centre_lit(rec):
    return '[%s]' % ', '.join('[%s]' % ', '.join(q_lit(x) for x in row) for row in centre(rec))


# --------------------------------------------------------------------------------------------- generation
STEPS = [('export_record.py', []), ('export_v2.py', ['--all', '--labels', '--search']), ('export_joint.py', []),
         ('knormal.py', ['--v2'])]


def run_patched(fake, script, args):
    """Run a generator as `__main__` with the atlas certificate path served from `fake` (internal: `_gen`)."""
    real = gzip.open

    def gopen(path, *a, **k):
        if str(path).replace(os.sep, '/').endswith(ATLAS_REL):
            return real(fake, *a, **k)
        return real(path, *a, **k)
    gzip.open = gopen
    sys.argv = [script] + list(args)
    sys.path.insert(0, HERE)
    runpy.run_path(os.path.join(HERE, script), run_name='__main__')


def postprocess(d, name, rec):
    """`Rec0` -> `Seed.Rec<name>`; the atlas-table references -> the record's literals; the record's index in
    comments -> its name."""
    R = Fr(float.fromhex(rec['R']) if isinstance(rec['R'], str) else rec['R'])
    for p in glob.glob(os.path.join(d, '*.lean')):
        t = open(p).read()
        t = re.sub(r'^import KernelAtlas\.Table\.T0\n', '', t, flags=re.M)
        t = re.sub(r'KernelAtlas\.Rec0(?![0-9A-Za-z_])', 'KernelAtlas.Seed.Rec%s' % name, t)
        t = re.sub(r'Table\.c0(?![0-9A-Za-z_])', centre_lit(rec), t)
        t = re.sub(r'Table\.r0(?![0-9A-Za-z_])', q_lit(R), t)
        t = re.sub(r'(atlas )?Record 0(?![0-9])', 'seed record %s' % name, t)
        assert 'Table.' not in t, p
        open(p, 'w').write(t)


def cmd_record(a):
    rec = load_record(a.cert, a.rec) if a.cert else f6_record()
    d = a.out or os.path.join(SRC, 'KernelAtlas', 'Seed', 'Rec%s' % a.name)
    os.makedirs(d, exist_ok=True)
    fake = os.path.join(d, '.atlas_stand_in.json.gz')
    with gzip.open(fake, 'wt') as f:
        json.dump(dict(records=[atlas_row(rec)]), f)
    json.dump(rec, open(os.path.join(d, '.record.json'), 'w'))
    log = open(os.path.join(d, '.generate.log'), 'w')
    t0 = time.time()
    for script, extra in STEPS:
        t1 = time.time()
        r = subprocess.run([PY, '-W', 'ignore', os.path.abspath(__file__), '_gen', fake, script, '0', d] + extra,
                           cwd=ROOT, capture_output=True, text=True)
        log.write('$ %s %s\n%s%s\n' % (script, ' '.join(extra), r.stdout, r.stderr)); log.flush()
        print('%s: %.0f s' % (script, time.time() - t1), flush=True)
        if r.returncode:
            raise SystemExit('%s failed:\n%s' % (script, (r.stdout + r.stderr)[-3000:]))
        if script == 'export_record.py':                            # the v1 direct-test slabs are not used (v2)
            for p in glob.glob(os.path.join(d, 'Slab*.lean')) + [os.path.join(d, 'Cover.lean')]:
                if os.path.exists(p):
                    os.remove(p)
    postprocess(d, a.name, rec)
    import kpack
    kpack.seal(d)
    print('generated %s in %.0f s' % (d, time.time() - t0))


# --------------------------------------------------------------------------------------------- compilation
def stale_closure(tops):
    """The `KernelAtlas.*` modules in the import closure of `tops` whose olean is missing or older than the source,
    with their `KernelAtlas.*` imports (the others are assumed built)."""
    def src(m):
        return os.path.join(SRC, *m.split('.')) + '.lean'

    def stale(m):
        ob = os.path.join(OLEAN, *m.split('.')) + '.olean'
        return not os.path.exists(ob) or os.path.getmtime(ob) < os.path.getmtime(src(m))
    deps, todo = {}, list(tops)
    while todo:
        m = todo.pop()
        if m in deps:
            continue
        deps[m] = [l.split()[1] for l in open(src(m)) if l.startswith('import KernelAtlas.')]
        todo += deps[m]
    need = {m for m in deps if m in tops or stale(m)}
    changed = True
    while changed:                                  # a module above a stale one is stale too
        changed = False
        for m, ds in deps.items():
            if m not in need and any(d in need for d in ds):
                need.add(m); changed = True
    return {m: [d for d in deps[m] if d in need] for m in need}


def parse_time(text):
    """CPU seconds and peak memory (GB) from BSD `time -l` or GNU `time -v`."""
    m2 = re.search(r'User time \(seconds\): ([\d.]+)', text)
    if m2:
        cpu = float(m2.group(1)) + float(re.search(r'System time \(seconds\): ([\d.]+)', text).group(1))
        rss = int(re.search(r'Maximum resident set size \(kbytes\): (\d+)', text).group(1)) / 2 ** 20
        return cpu, rss
    m = re.search(r'([\d.]+) real\s+([\d.]+) user\s+([\d.]+) sys', text)
    r = re.search(r'(\d+)\s+maximum resident set size', text)
    return (float(m.group(2)) + float(m.group(3)) if m else None), (int(r.group(1)) / 2 ** 30 if r else None)


def cmd_build(a):
    """`lake build` one module at a time (so lake never builds several heavy modules at once), in dependency order,
    at most `--procs` at once; CPU time and peak memory per module (lake's overhead of a few seconds included)."""
    left = stale_closure(a.mods)
    print('%d modules to build' % len(left), flush=True)
    done, running = {}, {}
    logd = a.logdir or os.path.join(ROOT, 'kernel_atlas', 'results', 'seed_local', 'build_logs')
    os.makedirs(logd, exist_ok=True)
    rows = open(os.path.join(logd, 'build.jsonl'), 'a')
    timer = ['/usr/bin/time', '-v'] if sys.platform.startswith('linux') else ['/usr/bin/time', '-l']
    t0 = time.time()
    while left or running:
        for p in list(running):
            if p.poll() is None:
                continue
            mod, t1, f, lg = running.pop(p)
            f.close()
            text = open(lg).read()
            cpu, rss = parse_time(text)
            row = dict(module=mod, ok=p.returncode == 0, cpu_s=cpu, peak_gb=rss and round(rss, 2),
                       wall_s=round(time.time() - t1, 1), at=time.strftime('%Y-%m-%d %H:%M:%S'))
            rows.write(json.dumps(row) + '\n'); rows.flush()
            print('%s %s %s cpu %s s, peak %s GB, wall %s s' % (time.strftime('%H:%M:%S'), mod,
                  'ok' if p.returncode == 0 else 'FAILED', cpu, row['peak_gb'], row['wall_s']), flush=True)
            if p.returncode:
                print(text[-3000:])
                for q in running:
                    q.wait()
                raise SystemExit(1)
            done[mod] = row
        busy = [r[0] for r in running.values()]
        solo = re.compile(a.solo) if a.solo else None
        for mod, deps in sorted(left.items()):
            if len(running) >= a.procs or (solo and any(solo.search(m.rsplit('.', 1)[1]) for m in busy)):
                break
            if any(dd in left or dd in busy for dd in deps):
                continue
            if solo and solo.search(mod.rsplit('.', 1)[1]) and busy:
                continue                            # a heavy module runs alone
            lg = os.path.join(logd, mod + '.log')
            f = open(lg, 'w')
            p = subprocess.Popen(timer + ['lake', 'build', mod], cwd=LEAN, stdout=f, stderr=subprocess.STDOUT)
            running[p] = (mod, time.time(), f, lg)
            busy.append(mod)
            del left[mod]
        time.sleep(1)
    if done:
        tot = sum(r['cpu_s'] or 0 for r in done.values())
        print('built %d modules: %.1f CPU-min, peak %.1f GB, wall %.1f min' % (
            len(done), tot / 60, max(r['peak_gb'] or 0 for r in done.values()), (time.time() - t0) / 60))


# --------------------------------------------------------------------------------------------- boundary data
DT = 36 * 2 ** 30                          # T = T^ / DT (export_tangent.DT)


def record_consts(rec):
    """The kernel normal-bound constants of the record (`knormal.kernel_consts`, the values of `Frame`/`Record2`)."""
    import knormal as KN
    return KN.kernel_consts(atlas_row(rec), DT)


def eta_scale(rec):
    return Fr(float.fromhex(rec['eta_scale']) if isinstance(rec['eta_scale'], str) else rec['eta_scale'])


def shell_data(kc, E):
    """`ShellD` of the record shell at scale E (`shellMatch` against `RecBD`)."""
    import kbound as KBD
    GT = KBD.gram([kc['That'][k] for k in range(4)])
    R, nbar, g = kc['R'], kc['n'], kc['fc']['g']
    return dict(E=Fr(E), rH=g * R, lo=R * R - nbar * nbar, hi=R * R, GZ=[GT[k][l] for k in range(4) for l in range(4)],
                Gd=DT ** 2)


class RecBD:
    """`BData` of the `rec` groups of one record at `W = eta_scale` (`kbound.Boundary` with the given `W`; no tree):
    per target `Y = L(A P_s + 2π̃N − P_t)`, the 5 x 5 Gram matrix `G` of `hor36(Y), hor36(A T^_k)` and the thresholds
    `Θ_d = ⌊(κ_d D_d)²⌋`, `κ_d = 36 L Wd 2^d DT`, `D_d = R_t − n̄ − 2 s_λ W/2^d − 10⁻²⁰(ΣN² + 1)`."""

    def __init__(self, kc, E, targets, dmax):
        import kbound as KBD
        self.K = KBD
        Ps, That = kc['Prad'], kc['That']
        R, g, lam, nbar = kc['R'], kc['fc']['g'], kc['fc']['lam'], kc['n']
        self.R, self.rH, self.lam, self.nbar, self.DT = R, g * R, lam, nbar, DT
        W = Fr(E)
        self.W, self.Wn, self.Wd = W, W.numerator, W.denominator
        assert self.rH <= W, 'eta_scale below the kernel r_H'
        self.slam = KBD.sqrt_up(lam)
        self.sq = KBD.sqrt_down(R * R - nbar * nbar)
        self.GT = KBD.gram([That[k] for k in range(4)])
        raw, Ls = [], 1
        for tg in targets:
            sg, tr, rp, cp, Pt = tg['sg'], tg['tr'], tg['rp'], tg['cp'], tg['Pt']
            N = tg.get('N') or KBD.winding(sg, tr, rp, cp, Ps, Pt)
            AP = KBD.act(sg, tr, rp, cp, Ps)
            Y = [[AP[a][b] + 2 * KBD.PI_LO * N[a][b] - Pt[a][b] for b in range(6)] for a in range(6)]
            for r in Y:
                for x in r:
                    Ls = Ls * x.denominator // math.gcd(Ls, x.denominator)
            raw.append((tg, N, Y))
        self.L = Ls
        self.tg = []
        for tg, N, Y in raw:
            sg, tr, rp, cp = tg['sg'], tg['tr'], tg['rp'], tg['cp']
            Yh = [[int(Ls * Y[a][b]) for b in range(6)] for a in range(6)]
            Hs = [KBD.hor36(Yh)] + [KBD.hor36(KBD.act(sg, tr, rp, cp, That[k])) for k in range(4)]
            G = KBD.gram(Hs)
            S = sum(N[a][b] ** 2 for a in range(6) for b in range(6))
            Th = []
            for d in range(dmax + 1):
                D = tg['Rt'] - nbar - 2 * self.slam * W / 2 ** d - KBD.PI_ERR * (S + 1)
                kap = 36 * Ls * self.Wd * 2 ** d * DT
                Th.append(KBD.floor_fr((kap * D) ** 2) if D >= 0 else 0)
            self.tg.append(dict(tg, N=N, Y=Yh, G=G, Th=Th, rpi=KBD.inv(rp), cpi=KBD.inv(cp)))

    def rec_ok(self, j, b):
        """`recBoxOK D j b` (Lean: `trOK` at depth m, centre L + 1)."""
        import seed_exact as SE
        t, d = self.tg[j], b[0]
        th = t['Th'][d] if d < len(t['Th']) else 0
        m = [SE.bL(b, a) + 1 for a in range(4)]
        w = [self.Wd * 2 ** d * self.DT] + [self.L * self.Wn * x for x in m]
        return 0 < th and self.K.qf(t['G'], w) < th


def rec_cover(S, BD, L0, maxl):
    """Entries (box, group) for a record shell all of whose boxes go to `rec` targets: from the root, a box is missed
    (`shellMiss`), or listed at level >= L0 with the first target passing `recBoxOK`, or split.  Preorder."""
    import seed_exact as SE
    out, st = [], dict(miss=0, split=0, listed=0)

    def go(x):
        if SE.shellMiss(S, x):
            st['miss'] += 1; return
        if x[0] >= L0:
            for j in range(len(BD.tg)):
                if BD.rec_ok(j, x):
                    out.append((x, j)); st['listed'] += 1; return
        if x[0] >= maxl:
            raise AssertionError('undecided shell box %s' % (x,))
        st['split'] += 1
        for c in range(16):
            go(SE.child(x, c))
    go((0, 0, 0, 0, 0))
    assert [b for b, _ in out] == sorted([b for b, _ in out], key=SE.preorder_key)
    ok, nodes = SE.walk(lambda b: SE.shellMiss(S, b), maxl, [b for b, _ in out])
    assert ok
    st['nodes'] = nodes
    return out, st


def ilist(xs):
    return '[%s]' % ', '.join(str(int(x)) for x in xs)


def lean_bdata(name, BD, depth):
    flat = lambda M: [M[a][b] for a in range(6) for b in range(6)]
    tl = []
    for t in BD.tg:
        tl.append(('{ cj := %s, tr := %s, rp := %s, rpi := %s, cp := %s, cpi := %s,\n      N := %s,\n      Pt := %s,\n'
                   '      Rt := %s,\n      Y := %s,\n      G := %s,\n      Th := %s }') % (
            'true' if t['sg'] == -1 else 'false', 'true' if t['tr'] else 'false', ilist(t['rp']), ilist(t['rpi']),
            ilist(t['cp']), ilist(t['cpi']), ilist(flat(t['N'])), t['Pt_lit'], t['Rt_lit'], ilist(flat(t['Y'])),
            ilist([x for row in t['G'] for x in row]), ilist(t['Th'][:depth + 1])))
    return '\n'.join([
        'set_option maxHeartbeats 0 in', 'noncomputable def %s : BData where' % name,
        '  DT := %d' % BD.DT, '  Wn := %d' % BD.Wn, '  Wd := %d' % BD.Wd, '  L := %d' % BD.L,
        '  R := %s' % q_lit(BD.R), '  rH := %s' % q_lit(BD.rH), '  lam := %s' % q_lit(BD.lam),
        '  nbar := %s' % q_lit(BD.nbar), '  slam := %s' % q_lit(BD.slam), '  sq := %s' % q_lit(BD.sq),
        '  GT := %s' % ilist([BD.GT[k][l] for k in range(4) for l in range(4)]), '  Bd := []', '  Phi := []',
        '  tg := [' + ('\n' if tl else '') + ',\n'.join('    ' + s for s in tl) + ']',
        '  base := 2', '  fuel := 0', '  code := 0', ''])


def lean_shell(name, S):
    return ('noncomputable def %s : ShellD where\n  E := %s\n  rH := %s\n  lo := %s\n  hi := %s\n  GZ := %s\n  Gd := %d\n'
            % (name, q_lit(S['E']), q_lit(S['rH']), q_lit(S['lo']), q_lit(S['hi']), ilist(S['GZ']), S['Gd']))


def lean_entries(name, es):
    return 'noncomputable def %s : List REntry := [%s]\n' % (
        name, ',\n  '.join('⟨⟨%d, %d, %d, %d, %d⟩, %d⟩' % (b + (g,)) for b, g in es))


G_ALIGN = {'id': (1, False), 'conj': (-1, False), 'T': (1, True), 'conjT': (-1, True)}


def boundary_entries(cert, s, dmax_default=None):
    """The `rec` targets (`RecBD` input) and the entries `(box, group index)` of record `s` of a FORMAT certificate:
    `rec` groups first (indices 0 … n_rec − 1, the order of `D.tg`), then the `T1prime` groups (n_rec + k for the
    k-th one); boxes sorted in preorder."""
    import seed_exact as SE
    rec = cert['records'][s]
    recg = [g for g in rec['boundary'] if g['kind'] == 'rec']
    t1g = [g for g in rec['boundary'] if g['kind'] == 'T1prime']
    tgts = []
    for g in recg:
        tr_ = cert['records'][g['target']]
        sg, tr = G_ALIGN[g['g']]
        Rt = Fr(float.fromhex(tr_['R']))
        tgts.append(dict(sg=sg, tr=tr, rp=list(g['rows']), cp=list(g['cols']),
                         N=[g['wind'][6 * a:6 * a + 6] for a in range(6)], Pt=centre(tr_), Rt=Rt,
                         Pt_lit=centre_lit(tr_), Rt_lit=q_lit(Rt), target=g['target']))
    es = [(tuple(b), k) for k, g in enumerate(recg) for b in g['boxes']]
    es += [(tuple(b), len(recg) + k) for k, g in enumerate(t1g) for b in g['boxes']]
    es.sort(key=lambda e: SE.preorder_key(e[0]))
    return rec, tgts, es, [dict(target=g['target'], g=g['g'], rows=g['rows'], cols=g['cols'], wind=g['wind'])
                           for g in t1g]


def cmd_boundary(a):
    """`Boundary.lean` (data, `gOK`, `tOK`, `shellMatch`), `BoundaryShell.lean` (`shellOK`), `BoundaryRec.lean`
    (`recEntriesOK`), `BoundaryCover.lean` (`bdMatch` and the theorem `boundary : Nonempty (RecBoundaryCover S A l)`
    for `A l = cert`, with the `rec` targets' links and the `T1prime` claims as hypotheses) for record `--rec` of the
    certificate `--cert`, in the record's folder (`Seed/Rec<name>/`) or `--emit`."""
    import seed_exact as SE
    cert = json.load(gzip.open(a.cert, 'rt'))
    rec, tgts, es, t1 = boundary_entries(cert, a.rec)
    kc = record_consts(rec)
    E = eta_scale(rec)
    S = shell_data(kc, E)
    maxl = cert['max_level']
    BD = RecBD(kc, E, tgts, maxl)
    t0 = time.time()
    ok, nodes = SE.walk(lambda b: SE.shellMiss(S, b), maxl, [b for b, _ in es])
    assert ok, 'the shell traversal fails'
    bad = [(b, g) for b, g in es if g < len(tgts) and not BD.rec_ok(g, b)]
    assert not bad, '%d rec boxes fail, e.g. %s' % (len(bad), bad[:3])
    depth = max([b[0] for b, g in es if g < len(tgts)] or [0])
    nrec = sum(1 for _, g in es if g < len(tgts))
    info = '%d entries (%d rec into %d targets, %d T1prime in %d groups), traversal %d nodes, max level %d' % (
        len(es), nrec, len(tgts), len(es) - nrec, len(t1), nodes, maxl)
    print('%s; mirror %.1f s' % (info, time.time() - t0))
    name = a.name
    rmod = 'KernelAtlas.Seed.Rec%s' % name
    d = a.emit or os.path.join(SRC, 'KernelAtlas', 'Seed', 'Rec%s' % name)
    os.makedirs(d, exist_ok=True)
    ns = a.ns or 'NoFourMUBs.KernelAtlas.Seed.Rec%s' % name
    mod = 'KernelAtlas.' + os.path.relpath(d, os.path.join(SRC, 'KernelAtlas')).replace(os.sep, '.')
    rq = '' if ns.endswith('.Rec%s' % name) else 'Rec%s.' % name          # references to the record's names
    opn = 'open Hadamard6 NoFourMUBs NoFourMUBs.SeedAtlas NoFourMUBs.KernelAtlas NoFourMUBs.KernelAtlas.Seed'
    hdr = lambda imps, doc: imps + ['', '/-! %s (generated by `seed_records.py`). -/' % doc, '', 'namespace %s' % ns,
                                    '', opn, '', 'set_option maxRecDepth 100000', '']
    L = hdr(['import %s.T2Data' % rmod, 'import KernelAtlas.Seed.RecCover'],
            'Record %s, the boundary data: %s' % (name, info))
    L += [lean_bdata('bd', BD, depth), lean_shell('sh', S), lean_entries('es', es), '',
          'def maxl : ℕ := %d' % maxl, '',
          'set_option maxHeartbeats 0 in',
          'theorem gOK_ : gOK bd (tcTh %stcfg2) = true := by decide +kernel' % rq, '',
          'set_option maxHeartbeats 0 in',
          'theorem tOK_ : bd.tg.all (tOK bd %stab.pq (tcTh %stcfg2)) = true := by decide +kernel' % (rq, rq), '',
          'set_option maxHeartbeats 0 in', 'theorem shellMatch_ : shellMatch sh bd = true := by decide +kernel', '',
          'end %s' % ns]
    open(os.path.join(d, 'Boundary.lean'), 'w').write('\n'.join(L) + '\n')
    L = hdr(['import %s.Boundary' % mod], 'Record %s, the shell traversal' % name)
    L += ['set_option maxHeartbeats 0 in',
          'theorem shellOK_ : shellOK sh maxl (es.map REntry.b) = true := by decide +kernel', '', 'end %s' % ns]
    open(os.path.join(d, 'BoundaryShell.lean'), 'w').write('\n'.join(L) + '\n')
    L = hdr(['import %s.Boundary' % mod], 'Record %s, the `rec` entries' % name)
    L += ['set_option maxHeartbeats 0 in',
          'theorem recOK_ : recEntriesOK bd es = true := by decide +kernel', '', 'end %s' % ns]
    open(os.path.join(d, 'BoundaryRec.lean'), 'w').write('\n'.join(L) + '\n')
    L = hdr(['import %s.BoundaryShell' % mod, 'import %s.BoundaryRec' % mod, 'import %s.Record2' % rmod],
            'Record %s: `RecBoundaryCover` from the kernel checks' % name)
    L += ['set_option maxHeartbeats 0 in',
          'theorem bdOK_ : bdMatch bd %sfq %sbars %stq2 = true := by decide +kernel' % (rq, rq, rq), '',
          '/-- The record\'s `rec` targets, as indices into the certificate\'s records. -/',
          'def recTargets : List ℕ := %s' % ilist([tg['target'] for tg in tgts]), '',
          '/-- **The boundary field of record %s** for any family `A` with `A l = cert`: `rec` group `j` goes' % name,
          'to `A (idx j)`, which must have the centre and radius of `bd.tg[j]` (`hlink`); `T1prime` group `k` has the',
          'target `t1 k`, whose claim on the shell points of its boxes is `ht1`. -/',
          'theorem boundary {σs ιr : Type} (S : σs → SeedBallCert) (A : ιr → RecordCert) (l : ιr) (hl : A l = %scert)'
          % rq,
          '    (idx : ℕ → ιr)',
          '    (hlink : ∀ j t, bd.tg[j]? = some t → (A (idx j)).P = Pmat t.pt ∧ (t.Rt : ℝ) ≤ (A (idx j)).R)',
          '    (t1 : ℕ → RecTarget σs ιr)',
          '    (ht1 : ∀ e ∈ es, bd.tg.length ≤ e.g → ∀ η, e.b.Mem (sh.E : ℝ) η →',
          '      Real.sqrt (∑ k, η k ^ 2) ≤ (A l).rH → (A l).R ^ 2 - (A l).n ^ 2 ≤ sumsq (tang (A l).T η) →',
          '      sumsq (tang (A l).T η) ≤ (A l).R ^ 2 → RecTargetHolds S A l (t1 (e.g - bd.tg.length)) η) :',
          '    Nonempty (RecBoundaryCover S A l) :=',
          '  recCoverK hl gOK_ tOK_ bdOK_ shellMatch_ shellOK_ recOK_ idx hlink t1 ht1', '',
          'end %s' % ns]
    open(os.path.join(d, 'BoundaryCover.lean'), 'w').write('\n'.join(L) + '\n')
    print('wrote %s/Boundary*.lean' % d)


def cmd_demo(a):
    """The prototype: F6's record shell, every box a `rec` entry into a synthetic second record (F6's centre with
    radius --rt) under the Γ-symmetry `conj` with rows (0,5,4,3,2,1), written as a FORMAT certificate
    (`DIR/.cert.json.gz`, records [F6's record, the synthetic one]) and exported by `cmd_boundary`."""
    rec = load_record(a.cert, a.rec) if a.cert else f6_record()
    kc = record_consts(rec)
    E = eta_scale(rec)
    S = shell_data(kc, E)
    Rt = Fr(a.rt)
    rp = [0, 5, 4, 3, 2, 1]
    syn = dict(rec, R=float(Rt).hex(), boundary=[])
    assert Fr(float(Rt)) == Rt
    BD = RecBD(kc, E, [dict(sg=-1, tr=False, rp=rp, cp=list(range(6)), Pt=kc['Prad'], Rt=Rt)], a.maxl)
    es, st = rec_cover(S, BD, a.level, a.maxl)
    print('demo cover: %d entries, levels %s, %s' % (len(es), sorted({b[0] for b, _ in es}), st))
    N = BD.tg[0]['N']
    rec = dict(rec, boundary=[dict(kind='rec', target=1, g='conj', rows=rp, cols=list(range(6)),
                                   wind=[x for r in N for x in r], boxes=[list(b) for b, _ in es])])
    os.makedirs(a.emit, exist_ok=True)
    cp = os.path.join(a.emit, '.cert.json.gz')
    with gzip.open(cp, 'wt') as f:
        json.dump(dict(format='seed-atlas-v1', max_level=a.maxl, seeds=[], records=[rec, syn], fourier_record=0,
                       tao=dict(R=float(0.08).hex(), label_radius=float(0.03).hex())), f)
    cmd_boundary(argparse.Namespace(cert=cp, rec=0, name='F6', emit=a.emit,
                                    ns='NoFourMUBs.KernelAtlas.Seed.TestR'))


def cmd_anchor(a):
    """`Seed/Rec<name>/Anchor.lean`: `fourierHadamard` in the record (`ExactK.memOK`, alignment by
    `kexact.find_perm_member` with Γ)."""
    import kexact as KX
    rec = load_record(a.cert, a.rec) if a.cert else f6_record()
    Pt = centre(rec)
    Rt = Fr(float.fromhex(rec['R']) if isinstance(rec['R'], str) else rec['R'])
    res = KX.find_perm_member(KX.fourier_mq(), Pt, Rt, gamma=True)
    assert res is not None, 'F6 is not in this record'
    m, al = res
    import kbound as KBD
    base = 'NoFourMUBs.KernelAtlas.Seed.Rec%s' % a.name
    d = os.path.join(SRC, 'KernelAtlas', 'Seed', 'Rec%s' % a.name)
    L = ['import KernelAtlas.Seed.Rec%s.Record2' % a.name, 'import KernelAtlas.ExactK', '',
         '/-! `fourierHadamard` lies in seed record %s (generated by `seed_records.py anchor`; alignment sign %d,' % (
             a.name, al['sg']),
         'transposed %s, exact margin %.3e of R = %s). -/' % (bool(al['tr']), m, float(Rt)), '',
         'namespace %s' % base, '', 'open Hadamard6 NoFourMUBs NoFourMUBs.KernelAtlas', '',
         'set_option maxRecDepth 100000', '',
         '/-- `fourierHadamard` into this record: the alignment, the winding, the record\'s own centre and radius. -/',
         'noncomputable def fourierT : BTgt :=',
         '  { cj := %s, tr := %s, rp := %s, rpi := %s, cp := %s, cpi := %s,' % (
             'true' if al['sg'] == -1 else 'false', 'true' if al['tr'] else 'false', ilist(al['rp']),
             ilist(KBD.inv(al['rp'])), ilist(al['cp']), ilist(KBD.inv(al['cp']))),
         '    N := %s,' % ilist([x for r in al['N'] for x in r]),
         '    Pt := tab.PqL, Rt := bars.R, Y := [], G := [], Th := [] }', '',
         'set_option maxHeartbeats 0 in',
         'theorem fourierT_ok : memOK fourierMq fourierT = true := by decide +kernel', '',
         '/-- **The Fourier anchor** in any family whose record `l` has this record\'s centre and radius. -/',
         'theorem fourier {ι : Type*} (A : ι → RecordCert) (l : ι) (hP : (A l).P = Pmat tab.pq)',
         '    (hR : (bars.R : ℝ) ≤ (A l).R) : Step2.FourierAnchorCertificate (InAtlas A) :=',
         '  fourierK A l fourierT_ok hP hR', '',
         '/-- **The Fourier anchor** in any family containing this record. -/',
         'theorem fourier_cert {ι : Type*} (A : ι → RecordCert) (l : ι) (hl : A l = cert) :',
         '    Step2.FourierAnchorCertificate (InAtlas A) :=',
         '  fourier A l (by rw [hl]; rfl) (by rw [hl]; exact le_rfl)', '',
         'end %s' % base]
    open(os.path.join(d, 'Anchor.lean'), 'w').write('\n'.join(L) + '\n')
    print('fourierHadamard -> record %s: alignment %s, margin %.3e' % (a.name, al, m))


# --------------------------------------------------------------------------------------------- main
def main():
    if len(sys.argv) > 1 and sys.argv[1] == '_gen':
        run_patched(sys.argv[2], sys.argv[3], sys.argv[4:])
        return
    ap = argparse.ArgumentParser()
    sub = ap.add_subparsers(dest='cmd', required=True)
    p = sub.add_parser('record')
    p.add_argument('--cert')
    p.add_argument('--rec', type=int, default=0)
    p.add_argument('--name', default='F6')
    p.add_argument('--out')
    p = sub.add_parser('build')
    p.add_argument('mods', nargs='+')
    p.add_argument('--procs', type=int, default=2)
    p.add_argument('--solo', default=r'^(Edg|Graph2|Clq|Hints2|Rows2)',
                   help='module names (regex) that run alone (their peaks reach 20-80 GB on high-label records)')
    p.add_argument('--logdir')
    p = sub.add_parser('demo')
    p.add_argument('--emit', required=True)
    p.add_argument('--cert')
    p.add_argument('--rec', type=int, default=0)
    p.add_argument('--maxl', type=int, default=6)
    p.add_argument('--level', type=int, default=3)
    p.add_argument('--rt', default='1/4')
    p = sub.add_parser('boundary')
    p.add_argument('--cert', required=True)
    p.add_argument('--rec', type=int, default=0)
    p.add_argument('--name', default='F6')
    p.add_argument('--emit')
    p.add_argument('--ns')
    p = sub.add_parser('anchor')
    p.add_argument('--cert')
    p.add_argument('--rec', type=int, default=0)
    p.add_argument('--name', default='F6')
    a = ap.parse_args()
    dict(record=cmd_record, build=cmd_build, demo=cmd_demo, boundary=cmd_boundary, anchor=cmd_anchor)[a.cmd](a)


if __name__ == '__main__':
    main()
