"""Export the label graph of a Record with the direct and the joint edge tests (KernelAtlas/Joint2K.lean).

Usage (repository root, after export_v2.py --all --labels):
  python3 kernel_atlas/generators/export_joint.py <idx> <out dir>

For every ordered label pair whose direct O (U) test fails, the least-squares multipliers of stagec.joint_filter are
rounded to integers (|.| <= 511) and checked with the exact mirror `kjoint.py`; if the joint test excludes the edge,
its bit is cleared and the multipliers become the pair's hint.  Writes `Graph2.lean` (bit rows, hint matrices, and
`edgesOK2`, `noTwo`, `labsSmall` by kernel decision) and `StageC2.lean` (the Stage C certificate via `stageCK2`).
"""
import gzip, json, os, pickle, sys, time
from fractions import Fraction as Fr

import numpy as np

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.abspath(os.path.join(HERE, '..', '..'))
sys.path[:0] = [HERE, os.path.join(ROOT, 'proof', 'atlas'), os.path.join(ROOT, 'explorations', 'atlas_survey')]
import kbins as KB                                                      # noqa: E402
import klabels as KL                                                    # noqa: E402
import ktangent2 as KT2                                                 # noqa: E402
import kjoint as KJ                                                     # noqa: E402
import stagec as SC                                                     # noqa: E402
from export_record import mod                                           # noqa: E402
from export_tangent import record_data                                  # noqa: E402


def enc(y0, y1, ye):
    f = [v + 512 for v in list(y0) + list(y1) + list(ye) + [0] * (2 - len(ye))]
    assert all(0 <= x < 1024 for x in f)
    return sum(x << (10 * k) for k, x in enumerate(f))


def main():
    idx, outdir = int(sys.argv[1]), sys.argv[2]
    sys.setrecursionlimit(100000)
    import survey as SV
    base = 'NoFourMUBs.KernelAtlas.Rec%d' % idx
    par, tc, tp, W0, R5, info = record_data(idx)
    t2 = KT2.TPar2(par, tc, tp.rHbar, tp.nbar, tp.tcol, KB)
    rec = SV.atlas()['records'][idx]
    d = pickle.load(open(os.path.join(outdir, '.v2_mirror.pkl'), 'rb'))
    labs = KL.cluster(d['S'], rec['label_radius'])
    n = len(labs)
    phi = [float.fromhex(x) for x in rec['phi']]
    Prad = [[Fr(phi[6 * j + i]) for i in range(6)] for j in range(6)]
    EU, EP = KB.eu_table(par.p), KB.ep_table(Prad, par.p)
    P = np.array(phi).reshape(6, 6) / SC.TWO_PI
    C = np.array([w for w, _, _ in labs]) / 192.0
    s = np.array([float(x) for _, x, _ in labs])
    sr = [Fr(x.numerator * (2 ** 30 // x.denominator), 2 ** 30) for _, x, _ in labs]
    k = KJ.consts(par, par.epsU, tp, tc)
    data = [KJ.label_data(par, tc, W0, EU, EP, w) for w, _, _ in labs]
    Kop, eP, Tf = SC.opnorm_bound(P), SC.cis_centre(P), SV.atlas_frame(idx)
    Z = Fr(2 ** par.p)

    def direct(A, B):
        zr = EU[0][0] + sum(EU[(a - b) % 192][0] for a, b in zip(A, B))
        zi = EU[0][1] + sum(EU[(a - b) % 192][1] for a, b in zip(A, B))
        N = zr * zr + zi * zi
        c = 2 * par.pihi * KB.S6HI * (sr[ia] + sr[ib]) + 6 * par.epsU
        return (c * Z) ** 2 < N, ((KB.S6HI + c) * Z) ** 2 < N or (0 < KB.S6LO - c and N < ((KB.S6LO - c) * Z) ** 2)

    t0 = time.time()
    oR, uR = [0] * n, [0] * n
    HO = [[0] * n for _ in range(n)]
    HU = [[0] * n for _ in range(n)]
    stats = dict(directO=0, directU=0, jointO=0, jointU=0, keptO=0, keptU=0)
    for ia in range(n):
        for ib in range(n):
            wa, wb = labs[ia][0], labs[ib][0]
            oex, uex = direct(wa, wb)
            for typ, ex in (('O', oex), ('U', uex)):
                if ex:
                    stats['direct' + typ] += 1
                    continue
                ok = False
                if ia != ib:
                    y0, y1, ye = KJ.ls_mult(C, s, ia, ib, typ, P, Kop, float(tp.rHbar), eP, Tf)
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
    print('pairs: %s; two cliques found: %s; %d clique calls; %.0fs' % (stats, found, calls[0], time.time() - t0))
    assert not found
    mat = lambda H: '[%s]' % ',\n  '.join('[%s]' % ', '.join(str(x) for x in row) for row in H)
    L = ['import %s.L2Data' % mod(base), 'import KernelAtlas.Joint2K', '',
         '/-! Record %d: the label graph of the v2 labels with the direct and the joint edge tests (generated by' % idx,
         '`export_joint.py`): %s; two-clique search %d calls in the mirror. -/' % (stats, calls[0]), '',
         'namespace %s' % base, '', 'open NoFourMUBs.KernelAtlas', '', 'set_option maxRecDepth 100000', '',
         'def oRows2 : List ℕ := [%s]' % ', '.join(str(x) for x in oR), '',
         'def uRows2 : List ℕ := [%s]' % ', '.join(str(x) for x in uR), '',
         'def oR2 (i : ℕ) : ℕ := oRows2.getD i 0', 'def uR2 (i : ℕ) : ℕ := uRows2.getD i 0', '',
         'def HO : List (List ℕ) := %s' % mat(HO), '', 'def HU : List (List ℕ) := %s' % mat(HU), '',
         'theorem labsSmall2 : labsSmall labs2 = true := by decide +kernel', '',
         'theorem cliqueOK2 : noTwo labs2.length oR2 uR2 = true := by decide +kernel', '',
         '/-- One row of `edgesOK2` (the check is split into row ranges, one kernel declaration each). -/',
         'noncomputable def erow (i : ℕ) : Bool := allNat labs2.length fun j =>',
         '  ((oR2 i).testBit j || edgeOB tab pq (labs2.getD i labD) (labs2.getD j labD) ||',
         '    jointOB tab cfg pq t2cfg tq2 (labs2.getD i labD) (labs2.getD j labD) (hintAt HO i j)) &&',
         '  ((uR2 i).testBit j || edgeUB tab pq (labs2.getD i labD) (labs2.getD j labD) ||',
         '    jointUB tab cfg pq t2cfg tq2 (labs2.getD i labD) (labs2.getD j labD) (hintAt HU i j))', '']
    CH = [(lo, min(10, n - lo)) for lo in range(0, n, 10)]
    for c, (lo, ln) in enumerate(CH):
        L.append('theorem ck_%d : allNat %d (fun k => erow (%d + k)) = true := by decide +kernel' % (c, ln, lo))
        L.append('')
    L.append('def chunks : List (ℕ × ℕ) := [%s]' % ', '.join('(%d, %d)' % ch for ch in CH))
    L += ['', 'end %s' % base]
    with open(os.path.join(outdir, 'Graph2.lean'), 'w') as f:
        f.write('\n'.join(L) + '\n')
    L = ['import %s.CoverH2' % mod(base), 'import %s.Graph2' % mod(base), 'import KernelAtlas.Joint2S', '',
         '/-! Record %d: the Stage C certificate with the v2 tangent test and the joint edge test (generated). -/' % idx,
         '', 'namespace %s' % base, '', 'open Hadamard6 NoFourMUBs NoFourMUBs.StageC NoFourMUBs.KernelAtlas', '',
         'theorem edgesOK2_ : edgesOK2 tab cfg pq t2cfg tq2 labs2 oR2 uR2 HO HU = true := by',
         '  show allNat labs2.length erow = true',
         '  refine allNat_of_ranges chunks (by decide +kernel) ?_',
         '  intro p hp',
         '  simp only [chunks, List.mem_cons, List.mem_nil_iff, or_false] at hp',
         '  rcases hp with %s' % ' | '.join(['rfl'] * len(CH)),
         '  exacts [%s]' % ', '.join('ck_%d' % c for c in range(len(CH))), '',
         'set_option maxHeartbeats 0 in',
         '/-- **Stage C for Record %d**, given the normal-bound radii. -/' % idx,
         'noncomputable def stageC2 {rH n r rF K : ℝ} (hK0 : 0 ≤ K)',
         '    (hK : ∀ z, cnorm (Qop ((1 / (2 * Real.pi)) • Pmat tab.pq) z) ≤ K * cnorm z)',
         '    (hKb : K ≤ pq.Kbar) (hr : r ≤ pq.rbar) (hrF : rF ≤ pq.rFbar) (hrH : rH ≤ tq2.rHbar) (hn : n ≤ tq2.nbar) :',
         '    StageCCert ((1 / (2 * Real.pi)) • Pmat tab.pq) (Tmat tcfg2 tq2) rH n r rF :=',
         '  stageCK2 (tb := tab) (c := cfg) (pq := pq) (t := t2cfg) (tq := tq2) (labs := labs2) (oR := oR2) (uR := uR2)',
         '    (HO := HO) (HU := HU) (coverT2 hK0 hK hKb hr hrF hrH hn) parOK t2parOK tabOK labs2OK labsSmall2 edgesOK2_',
         '    cliqueOK2 hK0 hK hKb hr hrF hrH hn', '', 'end %s' % base]
    with open(os.path.join(outdir, 'StageC2.lean'), 'w') as f:
        f.write('\n'.join(L) + '\n')


if __name__ == '__main__':
    main()
