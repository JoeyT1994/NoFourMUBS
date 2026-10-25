"""Kernel modules for one seed ball of the driver's certificate (KERNEL_SEED.md section 7).

For ball j of a FORMAT certificate (or a `seed-atlas-subset` export), writes `kernel_atlas/lean/KernelAtlas/SeedA/`:
  Tab.lean                 the shared table: every needed ball's kernel data `d<l> : SeedD` and inverse `i<l> : InvD`,
                           `Dt : ℕ → SeedD`, `It : ℕ → InvD`
  B<j>/Core<k>.lean        chunks of core boxes: the level-2 C1 boxes (`fullBox`: C1 and the transfer boxes inside)
                           and finer transfer-only core boxes (`coreFull`)
  B<j>/C1.lean             the C1 ball cover and `hC1`
  B<j>/Frame.lean          `frameOK` (hMth, hcol, hfrob)
  B<j>/Bnd.lean            the boundary entries, the sphere traversal, the entry checks and `bnd` (SeedBoundaryCover)
  B<j>/(Stage C modules)   `seed_stagec.py`'s modules, with `Ball.lean` reading the table
  B<j>/Cert.lean           `cert : SeedBallCert`
Every number the kernel checks is decided first by the exact mirrors (seed_c1, seed_transfer, seed_exact); a box that
fails is split into its 16 children (same target) down to MAX_LEVEL.

Usage:  python3 kernel_atlas/generators/seed_kball.py CERT J [--no-stagec] [--compile] [--jobs 3]
"""
import argparse, gzip, json, math, os, sys, time
from fractions import Fraction as Fr
import numpy as np

HERE = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, HERE)
import seed_c1 as C1                                         # noqa: E402
import seed_transfer as ST                                   # noqa: E402
import seed_exact as EX                                      # noqa: E402
import kpack                                                 # noqa: E402

SC = C1.SC
PP = C1.PP
ROOT = os.path.abspath(os.path.join(HERE, '..', '..'))
OUT = os.path.join(ROOT, 'kernel_atlas', 'lean', 'KernelAtlas', 'SeedA')
NS = 'NoFourMUBs.KernelAtlas.SeedA'
C1_LEVEL = 2                    # the starting grid of the C1 boxes
C1_MAX = 5                      # adaptive C1 (SPEC §11): a box that fails is split into its children, down to this level
MAX_LEVEL = 9
CHUNK = 8                       # core boxes per module
TABLE_MOD = os.environ.get('SEED_TABLE_MOD', 'KernelAtlas.SeedA.Tab')   # the production table: KernelAtlas.SeedA.TabAll


def fh(x): return float.fromhex(x) if isinstance(x, str) else float(x)
def red(x): return x - 2 * math.pi * round(x / (2 * math.pi))


# ------------------------------------------------------------------------------------------- ball data
def kseed(d):
    """The kernel data of a seed: P, U, theta0 (reduced), Mth on the grid (seed_c1.Ball); r rounded down to a multiple
    of 2^20 units; n, t, lamF rounded up (t, lamF with seed_stagec's margin)."""
    import seed_stagec as SCG
    b = C1.Ball(d)
    bd = SCG.ball_data(d)
    r = (int(math.floor(fh(d['r']) * SC)) >> 20) << 20
    D = dict(th0=b.th0z, Mth=b.Mz, P=b.Pz, U=b.Uz, n=bd['n'], o=b.o, r=r, t=bd['t'], lamF=bd['lamF'])
    adj, det = EX.adjugate(D['Mth'])
    return D, dict(adj=adj, det=det), b


def thc(D, wz):
    """theta at a grid point w (kernel data, floats)."""
    return [(D['th0'][k] + sum(D['Mth'][4 * k + l] * wz[l] for l in range(4)) / SC) / SC for k in range(4)]


def bx_centre(D, b):
    """The centre of a FORMAT box in w (grid), with the kernel radius."""
    m = b[0]
    return [(D['r'] >> m) * (2 * b[1 + a] - (1 << m) + 1) for a in range(4)]


def children(b):
    m = b[0]
    return [(m + 1,) + tuple(2 * b[1 + a] + ((c >> a) & 1) for a in range(4)) for c in range(16)]


# ------------------------------------------------------------------------------------------- the exact entries
def t0_entry(Dj, Dl, Il, b):
    """T0 (or None): the winding recomputed in the kernel's gauge (reduced theta0's) at the box centre."""
    th = thc(Dj, bx_centre(Dj, b))
    N = [int(round((Dl['th0'][k] / SC - th[k]) / (2 * math.pi))) for k in range(4)]
    return N if EX.t0OK(Dj, Dl, Il, N, tuple(b)) else None


def t1s_entry(Dj, Dl, Il, k, I, J, b):
    Ds = EX.symBall(k, I, J, Dj)
    th = thc(Ds, bx_centre(Dj, b))
    N = [int(round((Dl['th0'][c] / SC - th[c]) / (2 * math.pi))) for c in range(4)]
    return N if EX.t0OK(Ds, Dl, Il, N, tuple(b)) else None


# ------------------------------------------------------------------------------------------- generation
def generate(cert, j, stagec=True, log=print):
    sys.set_int_max_str_digits(0)
    seeds = cert['seeds']
    get = (lambda l: seeds[str(l)]) if isinstance(seeds, dict) else (lambda l: seeds[l])
    t0 = time.time()
    dj = get(j)
    Dj, Ij, ball = kseed(dj)
    tab = {j: (Dj, Ij)}

    def target(l):
        if l not in tab: tab[l] = kseed(get(l))[:2]
        return tab[l]

    rk = Dj['r']
    B = dict(th0=Dj['th0'], Mth=Dj['Mth'], P=Dj['P'], U=Dj['U'], n=Dj['n'], o=Dj['o'], hor=ball.hor)
    assert EX.frameOK(Dj, Ij), 'frame'
    # ---- C1 boxes (level 2) and their models
    import itertools
    c1 = [(C1_LEVEL,) + idx for idx in itertools.product(range(1 << C1_LEVEL), repeat=4)]
    c1 = sorted([b for b in c1 if not EX.ballMiss(b)], key=EX.preorder_key)
    cores = {}                                      # (level, idx) -> dict(D, qm, km, subs, c1)

    def core(level, idx):
        key = (level,) + tuple(idx)
        if key not in cores:
            hb = rk >> level
            wc = [(2 * i + 1 - (1 << level)) * hb for i in idx]
            try:
                D = C1.prepare(ball, np.array(wc, float) / SC, np.array([hb] * 4, float) / SC)
            except (RuntimeError, AssertionError) as ex:
                cores[key] = dict(D=None, ok=False, qm=None, km=None, subs=[], c1=False, why=str(ex))
                return cores[key]
            D['wc'] = wc; D['hb'] = [hb] * 4
            ok, qm, km, why = ST.core(B, D)
            cores[key] = dict(D=D, ok=ok, qm=qm, km=km, subs=[], c1=False, why=why)
        return cores[key]

    nworst = 0
    stack, c1 = list(c1), []
    while stack:                                   # adaptive C1: split a failing box into its children in the ball
        b = stack.pop()
        c = core(b[0], b[1:])
        ok, info = C1.c1Box(B, c['D']) if c['D'] is not None else (False, c['why'])
        if ok and info[0] <= Dj['n']:
            c['c1'] = True
            if ball.hor: c['sh'] = info[1].pop('sh')
            nworst = max(nworst, info[0])
            c1.append(b)
        else:
            assert b[0] < C1_MAX, ('C1 box', b, info if not ok else 'n %.4g > %.4g' % (info[0] / SC, Dj['n'] / SC))
            stack += [ch for ch in children(b) if not EX.ballMiss(ch)]
    c1.sort(key=EX.preorder_key)
    assert EX.walk(EX.ballMiss, C1_MAX, c1)[0]
    log('ball %s: r %.4g, %d C1 boxes, n needed %.4g of %.4g (%.0f s)' % (j, rk / SC, len(c1), nworst / SC,
                                                                         Dj['n'] / SC, time.time() - t0))
    # ---- boundary entries
    entries = []                                   # (box, kind, data)
    stats = dict(T0=0, T1s=0, T1=0, split=0)
    todo = []
    for g in dj['transfers']:
        for b in g['boxes']: todo.append((g, tuple(b)))
    while todo:
        g, b = todo.pop()
        kind = g['kind']
        lin = kind == 'T1' and set(g['rows']) == {0, 1, 2} and set(g['cols']) == {0, 1, 2}
        l = g['target']
        ok = False
        if kind == 'T0':
            Dl, Il = target(l)
            N = t0_entry(Dj, Dl, Il, b)
            if N is not None: entries.append((b, 't0', (l, N))); stats['T0'] += 1; ok = True
        elif lin:
            Dl, Il = target(l)
            k = ['id', 'conj', 'T', 'conjT'].index(g['g'])
            N = t1s_entry(Dj, Dl, Il, k, g['rows'], g['cols'], b)
            if N is not None: entries.append((b, 't1s', (l, k, list(g['rows']), list(g['cols']), N))); stats['T1s'] += 1; ok = True
        elif kind == 'T1':
            Dl, Il = target(l)
            tgt = dict(th0=Dl['th0'], Mth=Dl['Mth'], o=Dl['o'], r=Dl['r'])
            for level in range(C1_LEVEL, b[0] + 1):
                k1 = 1 << (b[0] - level)
                c = core(level, tuple(i // k1 for i in b[1:]))
                if not c['ok']: continue
                hs = rk >> b[0]
                centre = [(2 * i + 1 - (1 << b[0])) * hs for i in b[1:]]
                cc = [centre[a] - c['D']['wc'][a] for a in range(4)]
                h = [hs] * 4
                T, Bl, okt, why = SBt1(g, tgt, ST.shiftL(cc, h, c['qm']), ST.shiftL(cc, h, c['km']), h)
                if okt:
                    c['subs'].append(dict(c=cc, h=h, kind=1, t1=T, bl=Bl, rl=Dl['r'], tl=l, box=b))
                    stats['T1'] += 1; ok = True
                    break
        else:
            raise NotImplementedError(kind)
        if not ok:
            assert b[0] < MAX_LEVEL, ('cannot certify', kind, b)
            stats['split'] += 1
            todo += [(g, ch) for ch in children(b)]
    # the sub entries, after the cores are final
    clist = sorted(cores.items(), key=lambda kv: (not kv[1]['c1'], kv[0]))
    clist = [(k, v) for k, v in clist if v['c1'] or v['subs']]
    cindex = {k: i for i, (k, v) in enumerate(clist)}
    for k, v in clist:
        for si, s in enumerate(v['subs']):
            entries.append((s['box'], 'sub', (cindex[k], si, s['tl'])))
    entries.sort(key=lambda e: EX.preorder_key(e[0]))
    ok, nodes = EX.walk(EX.sphMiss, MAX_LEVEL, [e[0] for e in entries])
    assert ok, 'sphere traversal'
    log('entries %s; %d cores (%d C1 + %d finer); sphere traversal %d nodes (%.0f s)' % (
        stats, len(clist), sum(v['c1'] for k, v in clist), sum(not v['c1'] for k, v in clist), nodes, time.time() - t0))
    return dict(j=j, Dj=Dj, Ij=Ij, B=B, ball=ball, c1=c1, clist=clist, entries=entries, tab=tab, stats=stats,
                nodes=nodes, nworst=nworst, dj=dj)


def SBt1(g, tgt, qm, km, h):
    """T1D for a FORMAT T1 group on a sub-box (winding in the kernel's gauge), and the mirror's verdict."""
    rows = ST.full_perm(g['rows']); cols = ST.full_perm(g['cols'])
    gg = ['id', 'conj', 'T', 'conjT'].index(g['g'])
    T = dict(g=gg, rows=rows, cols=cols, N=[0] * 4, G=[], qg=0, m=0)
    thp = [ST.thpT(h, qm, T, k).cg(0)[0] / SC for k in range(4)]
    N = [int(round((tgt['th0'][k] / SC - thp[k]) / (2 * math.pi))) for k in range(4)]
    Mq = np.array(tgt['Mth'], float).reshape(4, 4) / SC
    Gz = [C1.gz(x) for x in np.linalg.inv(Mq).reshape(16)]
    T = dict(g=gg, rows=rows, cols=cols, N=N, G=Gz, qg=ST.qMin(Gz, tgt['Mth']), m=0)
    Bl = dict(th0=tgt['th0'], Mth=tgt['Mth'], P=[], U=[], n=0, o=tgt['o'])
    T['m'] = ST.least_bound(h, ST.vT(h, qm, T, Bl))
    ok, why = ST.t1OK(h, qm, km, T, Bl, tgt['r'], why=True)
    return T, Bl, ok, why


# ------------------------------------------------------------------------------------------- Lean emission
L = C1


def lst(l): return '[' + ', '.join(str(int(x)) for x in l) + ']'


def put(path, lines):
    os.makedirs(os.path.dirname(path), exist_ok=True)
    text = '\n'.join(lines) + '\n'
    with open(path, 'w') as f: f.write(text)


def seedD_lean(name, D):
    return ['noncomputable def %s : SeedD where' % name,
            '  B := { th0 := %s, Mth := %s, P := %s, U := %s, n := %d, o := %d }' % (
                lst(D['th0']), lst(D['Mth']), lst(D['P']), lst(D['U']), D['n'], D['o']),
            '  r := %d' % D['r'], '  t := %d' % D['t'], '  lamF := %d' % D['lamF'], '']


def write_table(tab):
    L_ = ['import KernelAtlas.Seed.Frame', '', '/-! The shared table of the kernel seed balls (generated by `seed_kball.py`). -/',
          '', 'namespace %s' % NS, '', 'open NoFourMUBs.KernelAtlas.Seed', '']
    for l in sorted(tab):
        D, I = tab[l]
        L_ += seedD_lean('d%d' % l, D)
        L_ += ['noncomputable def i%d : InvD where' % l, '  adj := %s' % lst(I['adj']), '  det := %d' % I['det'], '']
    first = min(tab)
    L_ += ['/-- The kernel data of ball `l`. -/', 'noncomputable def Dt : ℕ → SeedD']
    L_ += ['  | %d => d%d' % (l, l) for l in sorted(tab)] + ['  | _ => d%d' % first, '']
    L_ += ['noncomputable def It : ℕ → InvD'] + ['  | %d => i%d' % (l, l) for l in sorted(tab)] + \
          ['  | _ => i%d' % first, '', 'end %s' % NS]
    put(os.path.join(OUT, 'Tab.lean'), L_)


def sub_lean(s):
    T1 = s['t1']; bl = s['bl']
    t1 = '⟨%d, %s, %s, %s, %s, %d, %d⟩' % (T1['g'], lst(T1['rows']), lst(T1['cols']), lst(T1['N']), lst(T1['G']),
                                         T1['qg'], T1['m'])
    blz = '⟨d%d.B.th0, d%d.B.Mth, [], [], 0, d%d.B.o⟩' % (s['tl'], s['tl'], s['tl'])
    return '⟨%s, %s, 1, %s, %s, d%d.r, ⟨[], [], false, false, [], [], 0⟩⟩' % (lst(s['c']), lst(s['h']), t1, blz, s['tl'])


def write_ball(G, stagec=True):
    j = G['j']; base = '%s.B%d' % (NS, j); mod = 'KernelAtlas.SeedA.B%d' % j
    d = os.path.join(OUT, 'B%d' % j)
    os.makedirs(d, exist_ok=True)
    head = lambda *imps: [*('import %s' % m for m in imps), '', 'namespace %s' % base, '',
                          'open NoFourMUBs.KernelAtlas.Seed NoFourMUBs.KernelAtlas.SeedA', '']
    put(os.path.join(d, 'Ball.lean'), head(TABLE_MOD, 'KernelAtlas.Seed.Ball') + [
        '/-- Ball %d\'s kernel data (the shared table). -/' % j, 'noncomputable def seed : SeedD := d%d' % j, '',
        'end %s' % base])
    # cores, in chunks
    clist = G['clist']
    hor = G['ball'].hor             # SPEC §11: C1 boxes with row and column shifts (`Seed/C1Hor.lean`)
    names = []
    for k0 in range(0, len(clist), CHUNK):
        chunk = clist[k0:k0 + CHUNK]
        Lc = head('%s.Ball' % mod, 'KernelAtlas.Seed.C1Hor' if hor else 'KernelAtlas.Seed.Full')
        for i, (key, v) in enumerate(chunk):
            ci = k0 + i
            Lc += [L.lean_box('box%d' % ci, v['D']).replace('noncomputable def', 'noncomputable def'), '']
            Lc += ['noncomputable def subs%d : List SubD := [%s]' % (ci, ',\n    '.join(sub_lean(s) for s in v['subs'])), '']
            if v['c1'] and hor:
                Lc += ['def sh%d : List ℤ := %s' % (ci, lst(v['sh'])), '',
                       'theorem ok%d : fullBox (shiftB seed.B sh%d) box%d subs%d = true := by decide +kernel'
                       % (ci, ci, ci, ci), '']
            elif v['c1']:
                Lc += ['theorem ok%d : fullBox seed.B box%d subs%d = true := by decide +kernel' % (ci, ci, ci), '']
            else:
                Lc += ['theorem ok%d : coreFull seed.B box%d subs%d = true := by decide +kernel' % (ci, ci, ci), '']
            names.append(ci)
        Lc += ['end %s' % base]
        put(os.path.join(d, 'Core%d.lean' % (k0 // CHUNK)), Lc)
    ncore_mod = (len(clist) + CHUNK - 1) // CHUNK
    core_imps = ['%s.Core%d' % (mod, k) for k in range(ncore_mod)]
    # C1: the cover and hC1
    c1idx = [i for i, (k, v) in enumerate(clist) if v['c1']]
    bx = lambda b: '⟨%d, %d, %d, %d, %d⟩' % tuple(b)
    key2i = {k: i for i, (k, v) in enumerate(clist)}
    c1map = [key2i[tuple(b)] for b in G['c1']]
    Lb = head(*core_imps, 'KernelAtlas.Seed.Assemble') + [
        'noncomputable def c1Ls : List Bx := [%s]' % ', '.join(bx(b) for b in G['c1']), '',
        *(['noncomputable def c1BoxesH : List (BoxD × List ℤ) := [%s]' % ', '.join('(box%d, sh%d)' % (i, i)
                                                                               for i in c1map), '',
            'noncomputable def c1Boxes : List BoxD := c1BoxesH.map Prod.fst', ''] if hor else
          ['noncomputable def c1Boxes : List BoxD := [%s]' % ', '.join('box%d' % i for i in c1map), '']),
        'theorem c1cover : ballOK seed.r %d c1Ls = true := by decide +kernel' % C1_MAX, '',
        'theorem c1match : (c1Ls.all fun b => decide (seed.r % 2 ^ b.m = 0) &&',
        '    c1Boxes.any fun D => decide (D.wc = b.wcZ seed.r) && decide (D.hb = b.hbN seed.r)) = true := by',
        '  decide +kernel', '',
        'set_option maxRecDepth 100000 in',
        ('theorem c1all : ∀ x ∈ c1BoxesH, c1Box (shiftB seed.B x.2) x.1 = true :=' if hor else
         'theorem c1all : ∀ D ∈ c1Boxes, c1Box seed.B D = true :='),
        '  ' + ''.join('List.forall_mem_cons.2 ⟨(fullBox_sound ok%d (o := %s) rfl).1, ' % (i, '1' if G['Dj']['o'] == 1 else '-1')
                       for i in c1map) + 'List.forall_mem_nil _' + '⟩' * len(c1map),
        '', 'end %s' % base]
    put(os.path.join(d, 'C1.lean'), Lb)
    # frame
    put(os.path.join(d, 'Frame.lean'), head('%s.Ball' % mod) + [
        'theorem hframeK : frameOK seed i%d = true := by decide +kernel' % j, '', 'end %s' % base])
    # boundary
    E = []
    for (b, kind, dat) in G['entries']:
        if kind == 't0': E.append('.t0 %d %s %s' % (dat[0], lst(dat[1]), bx(b)))
        elif kind == 't1s': E.append('.t1s %d %d %s %s %s %s' % (dat[0], dat[1], lst(dat[2]), lst(dat[3]), lst(dat[4]), bx(b)))
        else: E.append('.sub %d %d %d %s' % (dat[0], dat[1], dat[2], bx(b)))
    o = '1' if G['Dj']['o'] == 1 else '-1'
    Le = head(*core_imps, 'KernelAtlas.Seed.Links') + [
        'noncomputable def ents : List SEntry := [%s]' % ',\n    '.join(E), '',
        'noncomputable def cores : List CoreD := [%s]' % ', '.join('⟨box%d, subs%d⟩' % (i, i) for i in range(len(clist))),
        '',
        'theorem hsph : sphereOK seed.r %d (ents.map SEntry.box) = true := by decide +kernel' % MAX_LEVEL, '',
        'theorem hent : ents.all (entryOK seed cores Dt It) = true := by decide +kernel', '',
        'set_option maxRecDepth 100000 in',
        'theorem hcores : ∀ C ∈ cores, coreFull seed.B C.D C.subs = true :=',
        '  ' + ''.join('List.forall_mem_cons.2 ⟨%s, ' % (
            ('((coreFull_shiftB seed.B sh%d box%d subs%d).symm.trans (fullBox_coreFull ok%d))' % (i, i, i, i)) if v['c1'] and hor else
            ('fullBox_coreFull ok%d' % i) if v['c1'] else ('ok%d' % i))
                       for i, (k, v) in enumerate(clist)) + 'List.forall_mem_nil _' + '⟩' * len(clist),
        '', 'theorem hallT1 : allT1 cores ents = true := by decide +kernel', '',
        '/-- **The boundary cover of ball %d**, for any atlas family carrying the table\'s data. -/' % j,
        'theorem bnd {σs ιr : Type} (S : σs → NoFourMUBs.SeedAtlas.SeedBallCert) (A : ιr → NoFourMUBs.RecordCert)',
        '    (ofS : ℕ → σs) (ofR : ℕ → ιr) {jj : σs}',
        '    (hj : (S jj).theta0 = th0R seed.B ∧ (S jj).Mth = MthR seed.B ∧ (S jj).r = rn seed.r ∧ (S jj).o = %s)' % o,
        '    (hl : ∀ l, BallLink S ofS l (Dt l)) : Nonempty (NoFourMUBs.SeedAtlas.SeedBoundaryCover S A jj) :=',
        '  seedBoundary_of S A ofS ofR (o := %s) rfl hj hsph hcores hent hl (recLinks_of_t1 A ofR hallT1)' % o,
        '', 'end %s' % base]
    put(os.path.join(d, 'Bnd.lean'), Le)
    if stagec:
        import seed_stagec as SCG
        info = SCG.generate(G['dj'], j, d, base, 'Seed ball %d' % j)
        # the Stage C modules read the shared table
        put(os.path.join(d, 'Ball.lean'), head(TABLE_MOD, 'KernelAtlas.Seed.Ball') + [
            '/-- Ball %d\'s kernel data (the shared table). -/' % j, 'noncomputable def seed : SeedD := d%d' % j, '',
            'end %s' % base])
    put(os.path.join(d, 'Cert.lean'), head('%s.C1' % mod, '%s.Frame' % mod, '%s.SeedC' % mod) + [
        '/-- **Seed ball %d**, every field checked by the kernel. -/' % j,
        'noncomputable def cert : NoFourMUBs.SeedAtlas.SeedBallCert :=',
        *(['  ballCertH seed %s (frame_sound hframeK).hMth (frame_sound hframeK).hcol (frame_sound hframeK).hfrob' % o,
           '    (hC1H_of_cover (o := %s) rfl c1BoxesH c1all (ball_cover_boxes c1cover (hmatch_of_any c1match)))'
           ' stageC' % o] if hor else
          ['  ballCert seed %s (frame_sound hframeK).hMth (frame_sound hframeK).hcol (frame_sound hframeK).hfrob' % o,
           '    (hC1_of_boxes (o := %s) rfl c1all (ball_cover_boxes c1cover (hmatch_of_any c1match))) stageC' % o]), '',
        'end %s' % base])
    for f in os.listdir(d):
        if f.endswith('.lean'): kpack.seal(os.path.join(d, f)) if False else None
    return d


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('cert'); ap.add_argument('j', type=int)
    ap.add_argument('--no-stagec', dest='stagec', action='store_false')
    a = ap.parse_args()
    op = gzip.open if a.cert.endswith('.gz') else open
    cert = json.load(op(a.cert, 'rt'))
    G = generate(cert, a.j)
    write_table(G['tab'])
    d = write_ball(G, a.stagec)
    print('wrote', d)


if __name__ == '__main__':
    main()
