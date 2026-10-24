"""Kernel Stage C data for one seed ball (KERNEL_SEED.md section 5): the Record pipeline on the ball's grid data.

Usage (from the repository root):
  python3 kernel_atlas/generators/seed_stagec.py BALLS.json IDX OUTDIR [--module NS] [--label-radius X] [--no-search]
  python3 kernel_atlas/generators/seed_stagec.py BALLS.json IDX OUTDIR --compile [--jobs 3] [--resume] [--rows FILE]

BALLS.json holds seed balls in FORMAT.md section 3 (`seed-atlas-v1`, or the `seed-atlas-testballs` file of
`kernel_atlas/results/seed_local`); IDX selects one.  The ball's data are put on the grid 2^-60 as for C1
(`seed_c1.Ball`: P, U, theta0, M_theta to the nearest grid point), r and n rounded up, and
t >= max_i ||U_(i)||_2, lambda_F >= ||U||_2 (floats on the grid values, relative margin --margin, rounded up).
The Stage C radii are then exact: r_H = r/2pi, n/2pi, r_col = (t r + n)/2pi, r_F = (lambda_F r + n)/2pi.

Writes, in OUTDIR (Lean namespace NS, default `NoFourMUBs.KernelAtlas.Seed.TestSC.B<IDX>`), the modules of a Record
(export_record.py, export_v2.py, export_joint.py, with the same checkers and exact mirrors) on the ball's data:
  Data.lean        `cfg`, `pq`, `tab` (centre P = the grid P, exactly), the coordinate trees;
  T2Data.lean      the exact frame `T' = U 2^60 + OT`, `DT = 2^60` (so `Tmat tcfg2 tq2 = Um ball` exactly);
  L2Data.lean      labels of the v2 survivors: the ball's label radius, or, if its graph fails in floats, the first
                   clustering variant that passes (`graph_v2.variants`; --no-search: the ball's radius regardless);
  H2SlabNN.lean    the hinted v2 bin tree, CoverH2.lean `coverT2`;
  Rows2, Hints2, EdgNN, [ClqNN], Graph2.lean   the label graph (direct + joint edges, clique search);
  StageC2.lean     `stageC2`, the certificate for any radii under the bars (as for a Record);
  Norm.lean        `tabN` (p = 64) and `e0OK_` (the operator-norm bound K);
  Ball.lean        `ball : BallD`, `seed : SeedD` (the shared grid data);
  SeedC.lean       the bridges `centreB`, `frameB`, `radiiB` by kernel decision and
                   `stageC := stageCSeed ...` (KernelAtlas/Seed/StageC.lean), the `stageC` field of the ball.
--compile compiles them with `lean -o` (dependency order, at most --jobs at once), records per-module CPU time and peak
RSS (`/usr/bin/time -l`), and checks `#print axioms NS.stageC`.  Nothing here is trusted: the kernel re-derives every
claim, the floats are only predictors.
"""
import argparse, collections, json, os, platform, re, subprocess, sys, time
from fractions import Fraction as Fr

import numpy as np

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.abspath(os.path.join(HERE, '..', '..'))
sys.path[:0] = [HERE, os.path.join(ROOT, 'proof', 'atlas'), os.path.join(ROOT, 'explorations', 'atlas_survey')]
import kbins as KB                                                      # noqa: E402
import ktangent2 as KT2                                                 # noqa: E402
import ktangent2l as KL2                                                # noqa: E402
import klabels as KL                                                    # noqa: E402
import kjoint as KJ                                                     # noqa: E402
import knormal as KN                                                    # noqa: E402
import kpack                                                            # noqa: E402
import graph_v2 as G2                                                   # noqa: E402
import seed_c1 as C1                                                    # noqa: E402
import stagec as SC                                                     # noqa: E402
from export_record import q_lit, v12, ct                                # noqa: E402
from export_joint import BITSET_MIN, bitset_chunks, row_tree, enc      # noqa: E402

PP = 60
GRID = 1 << PP
DT = GRID                     # T = (T' - OT) / DT exactly, with T' - OT = the grid integers of U
SRC = os.path.join(ROOT, 'kernel_atlas', 'lean')
LEAN = os.path.join(ROOT, 'lean')
OLEAN = os.path.join(LEAN, '.lake', 'build', 'lib', 'lean')
AXIOMS = {'propext', 'Classical.choice', 'Quot.sound'}


def mod(base):
    """The Lean module path of a namespace `NoFourMUBs.KernelAtlas.…` (library `KernelAtlas`)."""
    return base.replace('NoFourMUBs.KernelAtlas.', 'KernelAtlas.', 1)


def ceil_grid(x):
    """The least grid natural k with k / 2^60 >= x (x a nonnegative binary64 or Fraction)."""
    return KB.ceil_fr(Fr(x) * GRID)


class Frame:
    """The integer frame as the v2 mirror reads it (`Tp`, `OT`, `DT`; the v1 lane constants are unused)."""

    def __init__(self, That):
        self.DT = DT
        self.OT = max(1, max(abs(x) for M in That for row in M for x in row))
        self.Tp = [[[x + self.OT for x in row] for row in M] for M in That]


class TPq:
    """`TParQ` without the frame (`rHbar`, `nbar`, `tcol`)."""

    def __init__(self, rHbar, nbar, tcol):
        self.rHbar, self.nbar, self.tcol = rHbar, nbar, tcol


# ---------------------------------------------------------------- the ball on the grid
def ball_data(d, margin=1e-9):
    """Grid data of a FORMAT §3 seed (shared with C1 through `seed_c1.Ball`) and the exact Stage C radii."""
    b = C1.Ball(d)
    fh = lambda x: float.fromhex(x) if isinstance(x, str) else float(x)
    r = ceil_grid(fh(d['r']))
    n = ceil_grid(fh(d['n']))
    Uq = np.array(b.Uz, dtype=float).reshape(36, 4) / GRID          # the grid U (exact to 1e-16 relative)
    tf = max(np.linalg.norm(Uq.reshape(6, 6, 4)[:, i, :], 2) for i in range(6))   # U_(i): rows j, entries U[4(6j+i)+k]
    lf = np.linalg.norm(Uq, 2)
    t = ceil_grid(Fr(tf) * (1 + Fr(margin)) + Fr(1, 2 ** 50))
    lam = ceil_grid(Fr(lf) * (1 + Fr(margin)) + Fr(1, 2 ** 50))
    Prad = [[Fr(b.Pz[6 * j + i], GRID) for i in range(6)] for j in range(6)]
    That = [[[b.Uz[4 * (6 * j + i) + k] for i in range(6)] for j in range(6)] for k in range(4)]
    rr, nn, tt, ll = (Fr(x, GRID) for x in (r, n, t, lam))
    rads = dict(rH=rr, n=nn, rcol=tt * rr + nn, rF=ll * rr + nn)        # radians, exact
    return dict(c1=b, r=r, n=n, t=t, lamF=lam, Prad=Prad, That=That, rads=rads, t_float=tf, lam_float=lf,
                label_radius=fh(d['label_radius']), Uf=Uq, o=b.o)


def checker_data(bd, p=28, q=20):
    """The constants of the bin tree and the v2 test (as `export_tangent.record_data`, with the ball's frame)."""
    up = lambda x: KB.dyadic_up(Fr(x) * (1 + Fr(1, 10 ** 9)) / (2 * KB.PI_LO))
    R = bd['rads']
    rbar, rFbar, rHbar, nbar = up(R['rcol']), up(R['rF']), up(R['rH']), up(R['n'])
    Kbar = 1 + Fr(1, 10 ** 9)
    Prad = bd['Prad']
    KB.check_consts()
    EU = KB.eu_table(p)
    EP = KB.ep_table(Prad, p)
    epsU, epsP = KB.eps_tables(p, Prad)
    epsU, epsP = KB.dyadic_up(epsU), KB.dyadic_up(epsP)
    par = KB.Params(p, q, rbar, rFbar, Kbar, epsU, epsP)
    R5 = KB.roots(EU, EP, p)
    W0 = []
    for i in range(6):
        W0 += [EP[0][i][0] + par.BOFF, EP[0][i][1] + par.BOFF]
    tc = Frame(bd['That'])
    That = bd['That']
    tcol = KB.dyadic_up(max(Fr(sum(abs(That[k][j][i]) for j in range(6)), DT) for k in range(4) for i in range(6)))
    tp = TPq(rHbar, nbar, tcol)
    t2 = KT2.TPar2(par, tc, rHbar, nbar, tcol, KB)
    return dict(par=par, tc=tc, tp=tp, t2=t2, W0=W0, R5=R5, EU=EU, EP=EP, epsU=epsU, epsP=epsP, p=p, q=q)


# ---------------------------------------------------------------- labels and the label graph
def choose_labels(S, cd, P, frame, radius, seed_idx, search, nshuffle=4):
    """Labels of the v2 survivors: the ball's label radius in traversal order if its graph passes with direct + joint
    edges in floats (or unconditionally unless `search`), else the first clustering variant (graph_v2.variants: survivor
    order x label radius) that passes."""
    labs = KL.cluster(S, radius)
    if not search or G2.graphs(seed_idx, labs, cd['par'], cd['tp'], P, frame)['dj']:
        return labs, 'traversal order, radius %.4g' % radius
    tried = 0
    for oname, f, SS, rad in G2.variants(S, radius, seed_idx, nshuffle):
        tried += 1
        labs = KL.cluster(list(SS), rad)
        if G2.graphs(seed_idx, labs, cd['par'], cd['tp'], P, frame)['dj']:
            return labs, 'variant %s x %.1f of radius %.4g, %d tried' % (oname, f, radius, tried)
    raise RuntimeError('no clustering variant passes (%d tried)' % tried)


def label_graph(cd, labs, P, frame):
    """As `export_joint.main`: direct edges, joint-test exclusions with hints, and the two-clique search."""
    par, tc, tp, t2, W0, EU, EP = (cd[k] for k in ('par', 'tc', 'tp', 't2', 'W0', 'EU', 'EP'))
    n = len(labs)
    C = np.array([w for w, _, _ in labs]) / 192.0
    s = np.array([float(x) for _, x, _ in labs])
    sr = [Fr(x.numerator * (2 ** 30 // x.denominator), 2 ** 30) for _, x, _ in labs]
    k = KJ.consts(par, par.epsU, tp, tc)
    data = [KJ.label_data(par, tc, W0, EU, EP, w) for w, _, _ in labs]
    eP = SC.cis_centre(P)
    Z = Fr(2 ** par.p)
    LS = KJ.LSMult(C, s, eP, frame, tp.rHbar)

    def direct(ia, ib):
        A, B = labs[ia][0], labs[ib][0]
        zr = EU[0][0] + sum(EU[(a - b) % 192][0] for a, b in zip(A, B))
        zi = EU[0][1] + sum(EU[(a - b) % 192][1] for a, b in zip(A, B))
        N = zr * zr + zi * zi
        c = 2 * par.pihi * KB.S6HI * (sr[ia] + sr[ib]) + 6 * par.epsU
        return (c * Z) ** 2 < N, ((KB.S6HI + c) * Z) ** 2 < N or (0 < KB.S6LO - c and N < ((KB.S6LO - c) * Z) ** 2)

    oR, uR = [0] * n, [0] * n
    HO = [[0] * n for _ in range(n)]
    HU = [[0] * n for _ in range(n)]
    stats = dict(directO=0, directU=0, jointO=0, jointU=0, keptO=0, keptU=0)
    for ia in range(n):
        for ib in range(n):
            wa, wb = labs[ia][0], labs[ib][0]
            oex, uex = direct(ia, ib)
            for typ, ex in (('O', oex), ('U', uex)):
                if ex:
                    stats['direct' + typ] += 1
                    continue
                ok = False
                if ia != ib:
                    y0, y1, ye = LS(ia, ib, typ)
                    LA, LB = KJ.per_label(par, t2, data[ia], y0), KJ.per_label(par, t2, data[ib], y1)
                    ok = KJ.joint_check(k, typ, LA, LB, sr[ia], sr[ib], KJ.pair_q(EU, wa, wb), ye)
                if ok:
                    stats['joint' + typ] += 1
                    (HO if typ == 'O' else HU)[ia][ib] = enc(y0, y1, ye)
                else:
                    stats['kept' + typ] += 1
                    if typ == 'O':
                        oR[ia] |= 1 << ib
                    else:
                        uR[ia] |= 1 << ib
    calls = [0]

    def cl(kk, fuel, cand, need, acc):
        calls[0] += 1
        if need == 0:
            return kk(acc)
        if not cand:
            return False
        if fuel == 0:
            return True
        j, rest = cand[0], cand[1:]
        return (cl(kk, fuel - 1, [x for x in rest if oR[j] >> x & 1], need - 1, [x for x in acc if uR[j] >> x & 1])
                or cl(kk, fuel - 1, rest, need, acc))
    found = cl(lambda acc: cl(lambda _: True, n, acc, 6, []), n, list(range(n)), 6, list(range(n)))
    return dict(oR=oR, uR=uR, HO=HO, HU=HU, stats=stats, found=found, calls=calls[0])


# ---------------------------------------------------------------- Lean writers
def put(outdir, name, lines):
    with open(os.path.join(outdir, name + '.lean'), 'w') as f:
        f.write('\n'.join(lines) + '\n')


def head(base, *opens):
    return ['', 'namespace %s' % base, '', 'open %s' % ' '.join(opens or ('NoFourMUBs.KernelAtlas',)), '']


def write_data(outdir, base, title, cd, Prad):
    par, p = cd['par'], cd['p']
    L = ['import KernelAtlas.Tables', '', '/-!', '# Kernel bin-tree data for %s' % title, '',
         'Generated by `kernel_atlas/generators/seed_stagec.py`; do not edit.  The centre `PqL` is the ball\'s grid `P`',
         '(exactly; `centreB` in `SeedC.lean`).  Precision p = %d, q = %d, Taylor order %d.' % (p, cd['q'], KB.NTAYLOR),
         '-/'] + head(base)
    w = L.append
    w('def cfg : Cfg where')
    for nm, val in (('boff', par.BOFF), ('Z', par.Z), ('six', par.SIX_Z2), ('s6z', par.S6Z), ('q2', par.Q2),
                    ('eq', par.EQ)):
        w('  %s := %d' % (nm, val))
    w('  W0 := %s' % v12(cd['W0']))
    w('  lv := fun d => match d with')
    for dd in range(4):
        w('    | %s => ⟨%d, %d, %d⟩' % (str(dd) if dd < 3 else '_', par.thi[dd], par.tlo[dd], par.thr[dd]))
    w('')
    w('def pq : ParQ where')
    for nm, val in (('pihi', par.pihi), ('s6lo', KB.S6LO), ('s6hi', KB.S6HI), ('i6hi', KB.I6HI), ('x29hi', KB.X29HI),
                    ('rbar', par.rbar), ('rFbar', par.rFbar), ('Kbar', par.Kbar), ('E', par.E), ('eps1', par.eps1)):
        w('  %s := %s' % (nm, q_lit(val)))
    w('')
    assert Fr(1, 2 ** p) + cd['epsU'] * (1 + cd['epsP']) + cd['epsP'] <= par.eps1 and cd['epsP'] <= par.eps1
    w('def tab : Tab where')
    w('  p := %d' % p)
    w('  nT := %d' % KB.NTAYLOR)
    w('  EUL := [%s]' % ', '.join('(%d, %d)' % e for e in cd['EU']))
    w('  EPL := [%s]' % ', '.join('[%s]' % ', '.join('(%d, %d)' % e for e in row) for row in cd['EP']))
    w('  PqL := [%s]' % ', '.join('[%s]' % ', '.join(q_lit(x) for x in row) for row in Prad))
    w('  epsU := %s' % q_lit(cd['epsU']))
    w('  epsP := %s' % q_lit(cd['epsP']))
    w('')
    for m in range(5):
        for b in range(12):
            w('def T%d_%d : CT :=\n  %s' % (m + 1, b, ct(cd['R5'][m][b])))
            w('')
        w('def L%d : List CT := [%s]' % (m + 1, ', '.join('T%d_%d' % (m + 1, b) for b in range(12))))
        w('')
    w('theorem parOK : ParOK cfg pq := by decide +kernel')
    w('')
    w('theorem tabOK : tabB tab cfg pq L1 L2 L3 L4 L5 = true := by decide +kernel')
    w('')
    w('theorem rootsOK : RootsK L1 ∧ RootsK L2 ∧ RootsK L3 ∧ RootsK L4 ∧ RootsK L5 := by decide +kernel')
    w('')
    w('end %s' % base)
    put(outdir, 'Data', L)


def write_t2data(outdir, base, title, cd):
    tc, tp, t2 = cd['tc'], cd['tp'], cd['t2']
    L = ['import %s.Data' % mod(base), 'import KernelAtlas.Tangent2K', '',
         '/-! Tangent test v2 data for %s (generated by `seed_stagec.py`).  The frame is the ball\'s grid `U`:' % title,
         '`DT = 2^60`, `T\'[36k + 6a + b] − OT = U[4(6a + b) + k]` (`frameB` in `SeedC.lean`). -/'] + head(base)
    w = L.append
    w('/-- The exact frame `T = (T\' − OT)/DT` (only `OT` and `TpL` are used by v2). -/')
    w('def tcfg2 : TCfg where')
    w('  R := 1')
    w('  OT := %d' % tc.OT)
    w('  TpL := [%s]' % ', '.join(str(tc.Tp[k][j][i]) for k in range(4) for j in range(6) for i in range(6)))
    for nm in ('ox', 'og', 'OX', 'OG', 'c1', 'c0', 'ke', 'g'):
        w('  %s := 0' % nm)
    w('  lv := fun _ => ⟨0, 0, 0, 0, 0, 0⟩')
    w('')
    w('def tq2 : TParQ where')
    w('  DT := %d' % DT)
    for nm, val in (('rHbar', tp.rHbar), ('nbar', tp.nbar), ('tcol', tp.tcol)):
        w('  %s := %s' % (nm, q_lit(val)))
    w('')
    w('def t2cfg : T2Cfg where')
    w('  tc := tcfg2')
    w('  ke := %d' % t2.ke)
    w('  eZ := %d' % t2.eZ)
    w('  g := %d' % KT2.G2BITS)
    keys = ('kV', 'kU', 'kN', 'kA', 'kB', 'kG', 'kP', 'kC1', 'kC2', 'kD1', 'kD2', 'k1')
    w('  lv := fun d => match d with')
    for dd in range(4):
        w('    | %s => ⟨%s⟩' % (str(dd) if dd < 3 else '_', ', '.join(str(t2.lv[dd][k]) for k in keys)))
    skeys = ('sV', 'sR', 'sA1', 'sB1', 'sA2', 'sB2', 's1')
    w('  sc := fun d => match d with')
    for dd in range(4):
        w('    | %s => ⟨%s⟩' % (str(dd) if dd < 3 else '_', ', '.join(str(t2.sc[dd][k]) for k in skeys)))
    w('')
    w('end %s' % base)
    put(outdir, 'T2Data', L)


def write_labels(outdir, base, title, labs, nS, how):
    rows = []
    for w_, sr, _ in labs:
        assert (KL.SDEN % sr.denominator) == 0
        rows.append('%d, %d, %d, %d, %d, %d' % (*w_, sr.numerator * (KL.SDEN // sr.denominator)))
    L = ['import %s.T2Data' % mod(base), 'import KernelAtlas.Labels', '',
         '/-! %s: %d labels for the %d depth-0 survivors of the v2 bin tree (generated by `klabels.py`; %s). -/'
         % (title, len(labs), nS, how)] + head(base) + [
        'def labs2 : List Lab := [', ',\n'.join('  ⟨%s⟩' % r for r in rows) + ']', '',
        'theorem labs2OK : labsOK labs2 = true := by decide +kernel', '',
        '/-! The labels again, looked up by index through a comparison tree (for the label hints of `Tangent2L`;',
        '`labTreeOK` in `CoverH2.lean` checks it against `labs2`). -/', '']
    D = []

    def tree(lo, hi):
        nm = 'lT_%d_%d' % (lo, hi)
        if hi - lo == 1:
            D.append('def %s (_ : ℕ) : Lab := ⟨%s⟩' % (nm, rows[lo]))
            return nm
        mid = (lo + hi) // 2
        a, c = tree(lo, mid), tree(mid, hi)
        D.append('def %s (b : ℕ) : Lab := cond (Nat.blt b %d) (%s b) (%s b)' % (nm, mid, a, c))
        return nm
    top = tree(0, len(rows))
    put(outdir, 'L2Data', L + D + ['', 'def labT2 (b : ℕ) : Lab := %s b' % top, '', 'end %s' % base])


def leaf_names(n):
    return ('(leafLH labs2 labT2 %d)' % n, '(leafL labs2)', '(leafLH_imp labs2 labT2 %d (labTree_mem labTOK))' % n)


def write_slabs(outdir, base, title, hints, n):
    leaf = leaf_names(n)
    for b1 in range(12):
        L = ['import %s.L2Data' % mod(base), 'import KernelAtlas.Tangent2L', '',
             '/-! %s, tangent test v2: sub-slabs (%d, 0–11), one kernel declaration each (generated). -/'
             % (title, b1)] + head(base) + ['set_option maxRecDepth 100000', '']
        for b2 in range(12):
            L += ['def hs_%d_%d : List ℕ := [%s]' % (b1, b2, ', '.join(str(h) for h in hints[(b1, b2)])), '',
                  'set_option maxHeartbeats 0 in',
                  'theorem sub2_%d_%d : subL cfg t2cfg %s T1_%d T2_%d L3 L4 L5 hs_%d_%d = true := by decide +kernel'
                  % (b1, b2, leaf[0], b1, b2, b1, b2), '']
        put(outdir, 'H2Slab%02d' % b1, L + ['end %s' % base])
    L = ['import %s.H2Slab%02d' % (mod(base), b) for b in range(12)]
    L += ['import KernelAtlas.Tangent2L', 'import KernelAtlas.Tables', '', '/-!',
          '# %s: the bin tree with the direct test and the hinted v2 tangent test, end to end (generated)' % title, '',
          'Every phase vector `β ∈ [0,1]⁵` lies in a bin rejected by the direct test or the v2 test for every admissible',
          '`δ` of the ball with the exact frame `Tmat tcfg2 tq2`, or in a depth-0 bin in a label (`Tangent2L`).', '-/']
    L += head(base, 'Hadamard6', 'NoFourMUBs', 'NoFourMUBs.StageC', 'NoFourMUBs.KernelAtlas') + [
        'theorem t2parOK : T2ParOK cfg pq t2cfg tq2 := by decide +kernel', '',
        'theorem labTOK : labTreeOK labs2 labT2 %d = true := by decide +kernel' % n, '',
        'theorem hsubs : ∀ c1 ∈ L1, ∀ c2 ∈ L2, ∃ hs, subL cfg t2cfg %s c1 c2 L3 L4 L5 hs = true := by' % leaf[0],
        '  intro c1 hc1 c2 hc2',
        '  simp only [L1, List.mem_cons, List.mem_nil_iff, or_false] at hc1',
        '  simp only [L2, List.mem_cons, List.mem_nil_iff, or_false] at hc2',
        '  rcases hc1 with %s <;> rcases hc2 with %s' % (' | '.join(['rfl'] * 12), ' | '.join(['rfl'] * 12)),
        '  exacts [%s]' % ', '.join('⟨_, sub2_%d_%d⟩' % (b1, b2) for b1 in range(12) for b2 in range(12)), '',
        'theorem coverT2 {rH n r rF K : ℝ} (hK0 : 0 ≤ K)',
        '    (hK : ∀ z, cnorm (Qop ((1 / (2 * Real.pi)) • Pmat tab.pq) z) ≤ K * cnorm z)',
        '    (hKb : K ≤ pq.Kbar) (hr : r ≤ pq.rbar) (hrF : rF ≤ pq.rFbar) (hrH : rH ≤ tq2.rHbar) (hn : n ≤ tq2.nbar) :',
        '    ∀ β : I6 → ℝ, β j0 = 0 → (∀ j, 0 ≤ β j ∧ β j ≤ 1) →',
        '      Covered (Pmat tab.pq) (Tmat tcfg2 tq2) rH n r rF cfg.W0 %s β := by' % leaf[1],
        '  obtain ⟨hW, h1, h2, h3, h4, h5⟩ := tabB_spec tabOK',
        '  obtain ⟨r1, r2, r3, r4, r5⟩ := rootsOK',
        '  exact topL_sound parOK t2parOK hW hK0 hK hKb hr hrF hrH hn %s %s %s' % leaf,
        '    h1 h2 h3 h4 h5 r1 r2 r3 r4 r5 hsubs', '', 'end %s' % base]
    put(outdir, 'CoverH2', L)


def write_graph(outdir, base, title, g, n):
    """As `export_joint.main`: Rows2, Hints2, Edg<k>, [Clq<k>], Graph2 and StageC2."""
    oR, uR, HO, HU, stats = g['oR'], g['uR'], g['HO'], g['HU'], g['stats']
    bitset = g['bitset']
    HW = max(8, -(-max([h.bit_length() for row in HO + HU for h in row] + [1]) // 8) * 8)
    hdr = lambda: head(base, 'Hadamard6', 'NoFourMUBs.StageC', 'NoFourMUBs.KernelAtlas') + [
        'set_option maxRecDepth 100000', '']

    def write(name, lines):
        put(outdir, name, lines + ['', 'end %s' % base])
    if bitset:
        rows = row_tree(oR, uR, n) + ['', 'def oR2 (i : ℕ) : ℕ := (rowT2 (2 ^ i)).1',
                                      'def uR2 (i : ℕ) : ℕ := (rowT2 (2 ^ i)).2']
    else:
        rows = ['def oRows2 : List ℕ := [%s]' % ', '.join(str(x) for x in oR), '',
                'def uRows2 : List ℕ := [%s]' % ', '.join(str(x) for x in uR), '',
                'def oR2 (i : ℕ) : ℕ := oRows2.getD i 0', 'def uR2 (i : ℕ) : ℕ := uRows2.getD i 0']
    write('Rows2', ['import %s.L2Data' % mod(base), 'import KernelAtlas.StageCK2B', '',
                    '/-! %s: the rows of the label graph (generated by `seed_stagec.py`): %s. -/' % (title, stats)]
          + hdr() + rows)
    write('Hints2', ['import %s.Rows2' % mod(base), '',
                     '/-! %s: the joint-test hints and one row of `edgesOK2` (generated). -/' % title] + hdr() + [
        '/-- The joint-test hints (untrusted), one packed natural per row, `%d` bits per pair. -/' % HW,
        'def HOr : List ℕ := [%s]' % ', '.join(str(sum(h << (HW * j) for j, h in enumerate(row))) for row in HO), '',
        'def HUr : List ℕ := [%s]' % ', '.join(str(sum(h << (HW * j) for j, h in enumerate(row))) for row in HU), '',
        'def unpackH (r : ℕ) : List ℕ := (List.range %d).map fun j => Nat.mod (Nat.shiftRight r (%d * j)) (2 ^ %d)'
        % (n, HW, HW), '',
        'def HO : List (List ℕ) := HOr.map unpackH', '', 'def HU : List (List ℕ) := HUr.map unpackH', '',
        '/-- One row of `edgesOK2` (the check is split into row ranges, one kernel declaration each). -/',
        'noncomputable def erow (i : ℕ) : Bool := allNat labs2.length fun j =>',
        '  ((oR2 i).testBit j || edgeOB tab pq (labs2.getD i labD) (labs2.getD j labD) ||',
        '    jointOB tab cfg pq t2cfg tq2 (labs2.getD i labD) (labs2.getD j labD) (hintAt HO i j)) &&',
        '  ((uR2 i).testBit j || edgeUB tab pq (labs2.getD i labD) (labs2.getD j labD) ||',
        '    jointUB tab cfg pq t2cfg tq2 (labs2.getD i labD) (labs2.getD j labD) (hintAt HU i j))'])
    CH = [(lo, min(10, n - lo)) for lo in range(0, n, 10)]
    per_e = 3
    ne = (len(CH) + per_e - 1) // per_e
    for q in range(ne):
        E = ['import %s.Hints2' % mod(base), '',
             '/-! %s: edge decisions %d–%d (generated). -/' % (title, q * per_e, min(len(CH), (q + 1) * per_e) - 1)]
        E += hdr()
        for c in range(q * per_e, min(len(CH), (q + 1) * per_e)):
            lo, ln = CH[c]
            E += ['set_option maxHeartbeats 0 in',
                  'theorem ck_%d : allNat %d (fun k => erow (%d + k)) = true := by decide +kernel' % (c, ln, lo), '']
        write('Edg%02d' % q, E)
    imps = ['import %s.Edg%02d' % (mod(base), q) for q in range(ne)]
    if bitset:
        QCH, qcalls = g['QCH'], g['qcalls']
        per = 10
        nf = (len(QCH) + per - 1) // per
        for q in range(nf):
            Q = ['import %s.Rows2' % mod(base), '',
                 '/-! %s: clique decisions %d–%d of the bitset search (generated). -/'
                 % (title, q * per, min(len(QCH), (q + 1) * per) - 1)] + hdr()
            for c in range(q * per, min(len(QCH), (q + 1) * per)):
                lo, ln = QCH[c]
                Q += ['set_option maxHeartbeats 0 in',
                      'theorem cq_%d : allNat %d (fun k => pairOK rowT2 labs2.length (%d + k)) = true := by decide +kernel'
                      % (c, ln, lo), '']
            write('Clq%02d' % q, Q)
        imps += ['import %s.Clq%02d' % (mod(base), q) for q in range(nf)]
        clq = ['def qchunks : List (ℕ × ℕ) := [%s]' % ', '.join('(%d, %d)' % ch for ch in QCH), '',
               'set_option maxHeartbeats 0 in',
               '/-- The clique step: the bitset search (`CliqueB.lean`) in %d kernel decisions, %d calls. -/'
               % (len(QCH), qcalls),
               'theorem cliqueOK2 : NoTwoCliques (fun b d : Fin labs2.length => (oR2 b).testBit d = true)',
               '    (fun b d : Fin labs2.length => (uR2 b).testBit d = true) :=',
               '  noTwo_of_pairs rowT2 labs2.length (allNat_of_ranges qchunks (by decide +kernel) (by',
               '    intro p hp',
               '    simp only [qchunks, List.mem_cons, List.mem_nil_iff, or_false] at hp',
               '    rcases hp with %s' % ' | '.join(['rfl'] * len(QCH)),
               '    exacts [%s]))' % ', '.join('cq_%d' % c for c in range(len(QCH))), '']
    else:
        clq = ['set_option maxHeartbeats 0 in',
               'theorem cliqueOK2 : noTwo labs2.length oR2 uR2 = true := by decide +kernel', '']
    write('Graph2', imps + ['',
          '/-! %s: the label graph of the v2 labels with the direct and the joint edge tests (generated by' % title,
          '`seed_stagec.py`): %s; two-clique search %d calls in the mirror. -/' % (stats, g['calls'])] + hdr() + [
          'theorem labsSmall2 : labsSmall labs2 = true := by decide +kernel', ''] + clq + [
          'def chunks : List (ℕ × ℕ) := [%s]' % ', '.join('(%d, %d)' % ch for ch in CH)])
    L = ['import %s.CoverH2' % mod(base), 'import %s.Graph2' % mod(base),
         'import KernelAtlas.StageCK2B' if bitset else 'import KernelAtlas.Joint2S', '',
         '/-! %s: the Stage C certificate with the v2 tangent test and the joint edge test (generated). -/' % title]
    L += head(base, 'Hadamard6', 'NoFourMUBs', 'NoFourMUBs.StageC', 'NoFourMUBs.KernelAtlas') + [
        'theorem edgesOK2_ : edgesOK2 tab cfg pq t2cfg tq2 labs2 oR2 uR2 HO HU = true := by',
        '  show allNat labs2.length erow = true',
        '  refine allNat_of_ranges chunks (by decide +kernel) ?_',
        '  intro p hp',
        '  simp only [chunks, List.mem_cons, List.mem_nil_iff, or_false] at hp',
        '  rcases hp with %s' % ' | '.join(['rfl'] * len(CH)),
        '  exacts [%s]' % ', '.join('ck_%d' % c for c in range(len(CH))), '',
        'set_option maxHeartbeats 0 in',
        '/-- **Stage C for %s**, for any radii under the bars. -/' % title,
        'noncomputable def stageC2 {rH n r rF K : ℝ} (hK0 : 0 ≤ K)',
        '    (hK : ∀ z, cnorm (Qop ((1 / (2 * Real.pi)) • Pmat tab.pq) z) ≤ K * cnorm z)',
        '    (hKb : K ≤ pq.Kbar) (hr : r ≤ pq.rbar) (hrF : rF ≤ pq.rFbar) (hrH : rH ≤ tq2.rHbar) (hn : n ≤ tq2.nbar) :',
        '    StageCCert ((1 / (2 * Real.pi)) • Pmat tab.pq) (Tmat tcfg2 tq2) rH n r rF :=',
        '  %s (tb := tab) (c := cfg) (pq := pq) (t := t2cfg) (tq := tq2) (labs := labs2) (oR := oR2) (uR := uR2)'
        % ('stageCK2B' if bitset else 'stageCK2'),
        '    (HO := HO) (HU := HU) (coverT2 hK0 hK hKb hr hrF hrH hn) parOK t2parOK tabOK labs2OK labsSmall2 edgesOK2_',
        '    cliqueOK2 hK0 hK hKb hr hrF hrH hn', '', 'end %s' % base]
    put(outdir, 'StageC2', L)


def write_norm(outdir, base, title, Prad, That):
    X, eps = KN.tabN_data(Prad)
    F = [[[Fr(That[k][j][i], DT) for i in range(6)] for j in range(6)] for k in range(4)]
    e0, _ = KN.e0_j1(X, eps, F)
    L = ['import %s.Data' % mod(base), 'import KernelAtlas.E0K', '',
         '/-! %s: the centre residual `e₀ = %.3e` on a high-precision table, for the operator-norm bound `K̄`'
         % (title, e0), '(`opnorm_sound`; generated by `seed_stagec.py`). -/'] + head(base) + [
        '/-- The high-precision table of `exp(−i P)` (`p = %d`, Taylor order %d), on the same centre as `tab`. -/'
        % (KN.PN, KN.NTN),
        'def tabN : Tab where', '  p := %d' % KN.PN, '  nT := %d' % KN.NTN, '  EUL := []',
        '  EPL := [%s]' % ', '.join('[%s]' % ', '.join('(%d, %d)' % e for e in row) for row in X),
        '  PqL := tab.PqL', '  epsU := 0', '  epsP := %s' % q_lit(eps), '',
        'def e0q : ℚ := %s' % q_lit(e0), '',
        'theorem e0OK_ : e0OK tabN e0q = true := by decide +kernel', '', 'end %s' % base]
    put(outdir, 'Norm', L)
    return e0


def write_ball(outdir, base, title, bd):
    B = bd['c1'].ball_dict(bd['n'])
    L = ['import KernelAtlas.Seed.Ball', '',
         '/-! %s: the grid data (`2^-60`) shared by C1, the frame bounds and Stage C (generated by `seed_stagec.py`;'
         % title,
         '`P`, `U`, `θ₀`, `M_θ` as in `seed_c1.Ball`, `r` and `n` rounded up, `t ≥ max_i ‖U_(i)‖₂ = %.15g`,'
         % bd['t_float'], '`λ_F ≥ ‖U‖₂ = %.15g`). -/' % bd['lam_float']] + head(base, 'NoFourMUBs.KernelAtlas.Seed')
    L += [C1.lean_ball('ball', B),
          'noncomputable def seed : SeedD where', '  B := ball', '  r := %d' % bd['r'], '  t := %d' % bd['t'],
          '  lamF := %d' % bd['lamF'], '', 'end %s' % base]
    put(outdir, 'Ball', L)


def write_seedc(outdir, base, title):
    L = ['import %s.StageC2' % mod(base), 'import %s.Norm' % mod(base), 'import %s.Ball' % mod(base),
         'import KernelAtlas.Seed.StageC', '',
         '/-! %s: the `stageC` field of its `SeedBallCert`, every part checked by the kernel (generated by' % title,
         '`seed_stagec.py`). -/'] + head(base, 'Hadamard6', 'NoFourMUBs', 'NoFourMUBs.StageC', 'NoFourMUBs.KernelAtlas',
                                         'NoFourMUBs.KernelAtlas.Seed') + [
        '/-- The centre table holds the ball\'s `P`. -/',
        'theorem hcentre : centreB seed.B tab = true := by decide +kernel', '',
        '/-- The integer frame is the ball\'s `U`. -/',
        'theorem hframe : frameB seed.B tcfg2 tq2 = true := by decide +kernel', '',
        '/-- The radii `r/2π`, `n/2π`, `(t r + n)/2π`, `(λ_F r + n)/2π` under the bars, and `K̄`. -/',
        'theorem hradii : radiiB seed pq tq2 e0q = true := by decide +kernel', '',
        '/-- **Stage C of %s.** -/' % title,
        'noncomputable def stageC : StageCCert ((1 / (2 * Real.pi)) • Pm seed.B) (Um seed.B) (rn seed.r / (2 * Real.pi))',
        '    (rn seed.B.n / (2 * Real.pi)) ((rn seed.t * rn seed.r + rn seed.B.n) / (2 * Real.pi))',
        '    ((rn seed.lamF * rn seed.r + rn seed.B.n) / (2 * Real.pi)) :=',
        '  stageCSeed (tb := tab) (tbN := tabN) hcentre hframe rfl e0OK_ hradii',
        '    fun hK0 hK hKb hr hrF hrH hn => stageC2 hK0 hK hKb hr hrF hrH hn',
        '', 'end %s' % base]
    put(outdir, 'SeedC', L)


# ---------------------------------------------------------------- generation
def generate(d, seed_idx, outdir, base, title, label_radius=None, search=True, margin=1e-9, log=print):
    sys.set_int_max_str_digits(0)
    sys.setrecursionlimit(100000)
    os.makedirs(outdir, exist_ok=True)
    t0 = time.time()
    bd = ball_data(d, margin)
    cd = checker_data(bd)
    R = bd['rads']
    info = dict(ball=seed_idx, r=float(R['rH']), n=float(R['n']), t=bd['t'] / GRID, lamF=bd['lamF'] / GRID,
                rcol=float(R['rcol']), rF=float(R['rF']), rbar=float(cd['par'].rbar), rFbar=float(cd['par'].rFbar),
                rHbar=float(cd['tp'].rHbar), nbar=float(cd['tp'].nbar))
    log('ball %s: r = %.6g, n = %.6g, t = %.9f, lamF = %.12f; r_col = %.6g, r_F = %.6g rad'
        % (seed_idx, info['r'], info['n'], info['t'], info['lamF'], info['rcol'], info['rF']))
    write_data(outdir, base, title, cd, bd['Prad'])
    write_t2data(outdir, base, title, cd)
    # the v2 survivors (exact mirror), labels, then the label-hinted traversal
    t1 = time.time()
    S = []
    ok, st, _ = KL2.run(cd['par'], cd['tc'], cd['t2'], cd['W0'], cd['R5'],
                        leaf_cb=lambda acc, ts: S.append(tuple(t[0] for t in ts)) or True)
    log('mirror: %d v2 survivors, %.0fs' % (len(S), time.time() - t1))
    P = np.array([[float(x) for x in row] for row in bd['Prad']]) / SC.TWO_PI          # cycles
    frame = bd['Uf']                                                                    # T = U (Stage C in cycles)
    radius = label_radius if label_radius is not None else bd['label_radius']
    labs, how = choose_labels(S, cd, P, frame, radius, seed_idx, search)
    n = len(labs)
    log('labels: %d (%s), largest s = %.5f' % (n, how, float(max(s for _, s, _ in labs))))
    write_labels(outdir, base, title, labs, len(S), how)
    t1 = time.time()
    ok2, st2, hints = KL2.run(cd['par'], cd['tc'], cd['t2'], cd['W0'], cd['R5'], stats={}, labels=labs)
    assert ok2, 'the label-hinted traversal fails'
    kinds = collections.Counter(h % 4 for v in hints.values() for h in v)
    log('label hints: %d hints (%d leaf, %d scalar, %d linear, %d none), %.0fs'
        % (sum(kinds.values()), kinds[3], kinds[1], kinds[2], kinds[0], time.time() - t1))
    write_slabs(outdir, base, title, hints, n)
    # the label graph
    t1 = time.time()
    g = label_graph(cd, labs, P, frame)
    log('pairs: %s; two cliques found: %s; %d clique calls; %.0fs' % (g['stats'], g['found'], g['calls'],
                                                                      time.time() - t1))
    assert not g['found'], 'the label graph has two cliques'
    g['bitset'] = g['calls'] > BITSET_MIN
    if g['bitset']:
        g['QCH'], g['qcalls'] = bitset_chunks(g['oR'], g['uR'], n)
        log('bitset search: %d calls in %d kernel decisions' % (g['qcalls'], len(g['QCH'])))
    write_graph(outdir, base, title, g, n)
    e0 = write_norm(outdir, base, title, bd['Prad'], bd['That'])
    assert 1 + e0 / 4 <= cd['par'].Kbar ** 2, 'e0 too large for Kbar'
    write_ball(outdir, base, title, bd)
    write_seedc(outdir, base, title)
    kpack.seal(outdir)
    info.update(survivors=len(S), labels=n, label_how=how, hints=dict(all=sum(kinds.values()), leaf=kinds[3],
                scalar=kinds[1], linear=kinds[2], none=kinds[0]), graph=g['stats'], clique_calls=g['calls'],
                bitset=g['bitset'], e0=float(e0), gen_s=round(time.time() - t0, 1))
    with open(os.path.join(outdir, '.seed_stagec.json'), 'w') as f:
        json.dump(info, f, indent=1)
    return info


# ---------------------------------------------------------------- compilation (one ball, timed per module)
def lean_env():
    out = subprocess.run(['lake', 'env', 'printenv', 'LEAN_PATH'], cwd=LEAN, capture_output=True, text=True, check=True)
    lean = subprocess.run(['lake', 'env', 'which', 'lean'], cwd=LEAN, capture_output=True, text=True, check=True)
    return dict(os.environ, LEAN_PATH=out.stdout.strip()), lean.stdout.strip()


def timed(cmd):
    return (['/usr/bin/time', '-v'] if platform.system() == 'Linux' else ['/usr/bin/time', '-l']) + cmd


def parse_time(text):
    """(wall, user, sys, peak GB) from GNU or BSD time."""
    m = re.search(r'([\d.]+) real\s+([\d.]+) user\s+([\d.]+) sys', text)
    if m:
        r = re.search(r'(\d+)\s+maximum resident set size', text)
        return float(m.group(1)), float(m.group(2)), float(m.group(3)), int(r.group(1)) / 2 ** 30 if r else None
    u = re.search(r'User time \(seconds\): ([\d.]+)', text)
    if u:
        s = re.search(r'System time \(seconds\): ([\d.]+)', text)
        w = re.search(r'Elapsed \(wall clock\) time.*?: ([\d:.]+)', text)
        wall = sum(float(x) * 60 ** k for k, x in enumerate(reversed(w.group(1).split(':')))) if w else None
        rss = int(re.search(r'Maximum resident set size \(kbytes\): (\d+)', text).group(1)) / 2 ** 20
        return wall, float(u.group(1)), float(s.group(1)), rss
    return None, None, None, None


def compile_ball(outdir, base, jobs=3, logdir=None, resume=False):
    env, lean = lean_env()
    pre = mod(base) + '.'
    deps = {}
    for f in sorted(os.listdir(outdir)):
        if f.endswith('.lean'):
            deps[pre + f[:-5]] = [l.split()[1] for l in open(os.path.join(outdir, f)) if l.startswith('import ' + pre)]
    logdir = os.path.abspath(logdir or os.path.join(outdir, '.logs'))
    os.makedirs(logdir, exist_ok=True)
    left, running, done = dict(deps), {}, {}
    if resume:              # modules with an olean newer than their source keep it (and their logged timings)
        for m in list(left):
            rel = m.split('.')
            src, ob = os.path.join(SRC, *rel) + '.lean', os.path.join(OLEAN, *rel) + '.olean'
            log = os.path.join(logdir, rel[-1] + '.log')
            if os.path.exists(ob) and os.path.getmtime(ob) > os.path.getmtime(src) and os.path.exists(log):
                wall, user, sys_, rss = parse_time(open(log).read())
                done[m] = dict(wall_s=wall, user_s=user, sys_s=sys_, peak_gb=rss and round(rss, 2), rc=0, kept=True)
                del left[m]
    t0 = time.time()
    while left or running:
        for p in list(running):
            if p.poll() is None:
                continue
            m, log, f, ts = running.pop(p)
            f.close()
            wall, user, sys_, rss = parse_time(open(log).read())
            done[m] = dict(wall_s=wall, user_s=user, sys_s=sys_, peak_gb=rss and round(rss, 2), rc=p.returncode)
            print('%s %-40s rc %d  wall %7.1fs  user %7.1fs  peak %5.1f GB' % (
                time.strftime('%H:%M:%S'), m.rsplit('.', 1)[1], p.returncode, wall or 0, user or 0, rss or 0),
                flush=True)
            if p.returncode:
                for q in running:
                    q.kill()
                raise RuntimeError('%s failed:\n%s' % (m, open(log).read()[-3000:]))
        for m in sorted(left):
            if len(running) >= jobs:
                break
            if any(dd in left or dd in [r[0] for r in running.values()] for dd in left[m]):
                continue
            rel = m.split('.')
            src = os.path.join(SRC, *rel) + '.lean'
            ob = os.path.join(OLEAN, *rel)
            os.makedirs(os.path.dirname(ob), exist_ok=True)
            log = os.path.join(logdir, rel[-1] + '.log')
            f = open(log, 'w')
            p = subprocess.Popen(timed([lean, '-R', SRC, '-o', ob + '.olean', '-i', ob + '.ilean', src]), cwd=LEAN,
                                 env=env, stdout=f, stderr=subprocess.STDOUT)
            running[p] = (m, log, f, time.time())
            del left[m]
        time.sleep(0.5)
    ax = os.path.join(logdir, 'Axioms.lean')
    with open(ax, 'w') as f:
        f.write('import %sSeedC\n#print axioms %s.stageC\n' % (pre, base))
    r = subprocess.run([lean, ax], cwd=LEAN, env=env, capture_output=True, text=True)
    m = re.search(r'depends on axioms: \[(.*?)\]', r.stdout, re.S)
    axioms = sorted(a.strip() for a in m.group(1).split(',')) if m else None
    return dict(modules=done, axioms=axioms, axioms_ok=axioms is not None and set(axioms) <= AXIOMS,
                wall_s=round(time.time() - t0, 1), user_s=round(sum(v['user_s'] or 0 for v in done.values()), 1),
                peak_gb=max(v['peak_gb'] or 0 for v in done.values()))


def stage_of(name):
    """The Record-pipeline stage of a generated module."""
    for pre, st in (('H2Slab', 'tangent'), ('CoverH2', 'tangent'), ('Edg', 'edges'), ('Hints2', 'edges'),
                    ('Rows2', 'edges'), ('Clq', 'cliques'), ('Graph2', 'cliques'), ('L2Data', 'labels'),
                    ('Data', 'record'), ('T2Data', 'record'), ('Norm', 'record'), ('Ball', 'seed'),
                    ('StageC2', 'assembly'), ('SeedC', 'assembly')):
        if name.startswith(pre):
            return st
    return 'other'


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('balls')
    ap.add_argument('idx', type=int)
    ap.add_argument('out')
    ap.add_argument('--module', default=None)
    ap.add_argument('--label-radius', type=float, default=None)
    ap.add_argument('--no-search', dest='search', action='store_false',
                    help='use the label radius even if its graph fails in floats (no variant search)')
    ap.add_argument('--margin', type=float, default=1e-9, help='relative margin of t and lambda_F')
    ap.add_argument('--compile', action='store_true', help='compile the generated modules (no generation)')
    ap.add_argument('--jobs', type=int, default=3)
    ap.add_argument('--resume', action='store_true', help='--compile: keep oleans newer than their sources')
    ap.add_argument('--rows', default=None, help='append the compile summary (JSON) to this file')
    a = ap.parse_args()
    base = a.module or 'NoFourMUBs.KernelAtlas.Seed.TestSC.B%d' % a.idx
    title = 'seed ball %d of `%s`' % (a.idx, os.path.basename(a.balls))
    if a.compile:
        res = compile_ball(a.out, base, a.jobs, resume=a.resume)
        st = collections.defaultdict(lambda: dict(user_s=0.0, wall_s=0.0, peak_gb=0.0))
        for m, v in res['modules'].items():
            s = st[stage_of(m.rsplit('.', 1)[1])]
            s['user_s'] += v['user_s'] or 0
            s['wall_s'] += v['wall_s'] or 0
            s['peak_gb'] = max(s['peak_gb'], v['peak_gb'] or 0)
        res['stages'] = {k: {kk: round(vv, 1) for kk, vv in v.items()} for k, v in st.items()}
        info = os.path.join(a.out, '.seed_stagec.json')
        res['gen'] = json.load(open(info)) if os.path.exists(info) else None
        print(json.dumps({k: v for k, v in res.items() if k != 'modules'}, indent=1))
        if a.rows:
            with open(a.rows, 'a') as f:
                f.write(json.dumps(dict(ball=a.idx, base=base, **res)) + '\n')
        return
    d = json.load(open(a.balls))['seeds'][a.idx]
    info = generate(d, a.idx, a.out, base, title, a.label_radius, a.search, a.margin)
    print(json.dumps(info, indent=1))


if __name__ == '__main__':
    main()
