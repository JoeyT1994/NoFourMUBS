"""Export the `anchor` field: the base-anchor completion H0 in an atlas Record (`KernelAtlas/AnchorK.lean`).

Usage (repository root): python3 kernel_atlas/generators/export_anchor.py [out dir, default kernel_atlas/lean/KernelAtlas/Special]

H0 (`lean/NoFourMUBs/Step2/BaseAnchor.lean`, entries listed in `lean/generators/base_anchor/h0.json`) has entries
z = sum_k (alpha_k + i beta_k) mu_k over the surd monomials mu_k = sqrt3^k0 sqrt5^k1 sqrt7^k2.  Per entry, an exact
mirror of `entOK` gives theta~ (the binary64 atan2), B >= |z q - 1| by intervals (q ~ e^{-i theta~} from the Taylor
enclosure, n = 30, p = 64) and eta = pi_hi/2 (B + eps).  The membership is searched as in anchor.py and checked
exactly as `memOKg` (Q = theta~, slack E >= ||eta||).  Writes `Anchor.lean`.
"""
import json, math, os, sys
from fractions import Fraction as Fr

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.abspath(os.path.join(HERE, '..', '..'))
sys.path.insert(0, HERE)
sys.path.insert(0, os.path.join(ROOT, 'proof', 'atlas'))
import kexact as KX
from kbound import inv
from export_record import q_lit

NT, PT = 30, 64
SDEN = 2 ** 100
PI_HI = Fr(314159265358979323847, 10 ** 20)
MONO = {1: 0, 3: 1, 5: 2, 15: 3, 7: 4, 21: 5, 35: 6, 105: 7}


def coeffs(expr):
    """[(alpha_k, beta_k)] for k < 8 of a sympy expression in Q(i, sqrt3, sqrt5, sqrt7)."""
    import sympy as sp
    z = sp.expand(sp.sympify(expr))
    out = [[Fr(0), Fr(0)] for _ in range(8)]
    for part, slot in ((sp.re(z), 0), (sp.im(z), 1)):
        for term in sp.Add.make_args(sp.expand(part)):
            c, rest = term.as_coeff_Mul()
            if rest == 1:
                n = 1
            else:
                assert rest.is_Pow and rest.exp == sp.Rational(1, 2), term
                n = int(rest.base)
            out[MONO[n]][slot] += Fr(int(sp.Rational(c).p), int(sp.Rational(c).q))
    return [(a, b) for a, b in out]


def mu_float(k):
    return (math.sqrt(3) if k & 1 else 1) * (math.sqrt(5) if k & 2 else 1) * (math.sqrt(7) if k & 4 else 1)


def surd():
    def lo(p):
        s = Fr(math.isqrt(p * SDEN * SDEN), SDEN)
        assert s * s <= p
        return s
    S = {}
    for p in (3, 5, 7):
        l = lo(p)
        h = l + Fr(1, SDEN)
        assert h * h >= p
        S[p] = (l, h)
    return S


def mu_bounds(S, k):
    l = h = Fr(1)
    for bit, p in ((1, 3), (2, 5), (4, 7)):
        if k & bit:
            l *= S[p][0]; h *= S[p][1]
    return l, h


def ilo(a, lo, hi):
    return a * lo if a >= 0 else a * hi


def ihi(a, lo, hi):
    return a * hi if a >= 0 else a * lo


def taylor_cs(x, n):
    tr, ti, sr, si = Fr(1), Fr(0), Fr(0), Fr(0)
    for m in range(n):
        tr, ti, sr, si = -ti * x / (m + 1), tr * x / (m + 1), sr + tr, si + ti
    return sr, si


def rnd(q, p):
    v = q * 2 ** p + Fr(1, 2)
    return v.numerator // v.denominator


def cis_rem(x, n):
    return abs(x) ** n / math.factorial(n) * 2


def ent_cert(S, c, th):
    """(B, eta) exactly as `entOK` checks them."""
    isum = lambda f: sum(f(k) for k in range(8))
    xl = isum(lambda k: ilo(c[k][0], *mu_bounds(S, k)))
    xh = isum(lambda k: ihi(c[k][0], *mu_bounds(S, k)))
    yl = isum(lambda k: ilo(c[k][1], *mu_bounds(S, k)))
    yh = isum(lambda k: ihi(c[k][1], *mu_bounds(S, k)))
    C, Sn = taylor_cs(-th, NT)
    cp, sp_ = Fr(rnd(C, PT), 2 ** PT), Fr(rnd(Sn, PT), 2 ** PT)
    rl = ilo(cp, xl, xh) + ilo(-sp_, yl, yh) - 1
    rh = ihi(cp, xl, xh) + ihi(-sp_, yl, yh) - 1
    il = ilo(sp_, xl, xh) + ilo(cp, yl, yh)
    ih = ihi(sp_, xl, xh) + ihi(cp, yl, yh)
    U2 = max(rl * rl, rh * rh) + max(il * il, ih * ih)
    B = KX_sqrt_up(U2)
    assert abs(-th) / (NT + 1) <= Fr(1, 2) and B * B >= U2
    eta = PI_HI / 2 * (B + cis_rem(-th, NT) + Fr(1, 2 ** PT))
    return B, eta


def KX_sqrt_up(x, den=2 ** 120):
    s = Fr(math.isqrt(int(x * den * den)) + 1, den)
    assert s * s >= x
    return s


def find_member(Theta, E):
    """As anchor.py: atlas Records by corner-signature distance; an exact `memOKg` membership of e^{i Theta}."""
    import gzip
    import numpy as np
    import atlas as AT
    cert = json.load(gzip.open(os.path.join(ROOT, 'proof/atlas/results/atlas_certificate.json.gz'), 'rt'))
    recs = cert['records']
    Pf = np.array([[float(x) for x in r] for r in Theta])
    R400 = AT.corner_census(np.exp(1j * Pf))[0]
    Rq = {g: AT.corner_census(np.exp(1j * AT.gmap(g, Pf)))[0] for g in AT.GAMMA}
    F = [np.sort(AT.corner_census(np.exp(1j * np.array([float.fromhex(x) for x in r['phi']]).reshape(6, 6)))[0])
         for r in recs]
    dd = np.linalg.norm(np.array(F) - np.sort(R400), axis=1)
    zero = [[Fr(0)] * 6 for _ in range(6)]
    for t in np.argsort(dd)[:400]:
        r = recs[t]
        P = np.array([float.fromhex(x) for x in r['phi']]).reshape(6, 6)
        Pt = [[Fr(float.fromhex(r['phi'][6 * i + j])) for j in range(6)] for i in range(6)]
        Rt = Fr(r['R'])
        for (g, rr, cc, D0, dist) in sorted(AT.align(Pf, Rq, P, AT.corner_census(np.exp(1j * P))[0], r['R'], 1e9, top=3),
                                            key=lambda z: z[4]):
            sg = -1 if g in ('conj', 'conjtr') else 1
            tr = 1 if g in ('tr', 'conjtr') else 0
            rp, cp = [int(x) for x in rr], [int(x) for x in cc]
            AQ = KX.act(sg, tr, rp, cp, Theta)
            A = np.array([[float(x) for x in row] for row in AQ]) - P
            Z = np.exp(1j * A); Z = Z / Z[:1, :]; Z = Z / Z[:, :1]
            base = A - A[:1, :] - A[:, :1] + A[0, 0]
            Nf = (np.angle(Z) - base) / (2 * math.pi); N = np.rint(Nf)
            if np.abs(Nf - N).max() > 1e-6:
                continue
            N = [[int(N[a][b]) for b in range(6)] for a in range(6)]
            Mp = [[2 * N[a][b] for b in range(6)] for a in range(6)]
            X = KX.horq([[AQ[a][b] + KX.PI_LO * Mp[a][b] - Pt[a][b] for b in range(6)] for a in range(6)])
            D = Rt - KX.PI_ERR * (sum(x * x for row in Mp for x in row) + 1) / 2 - E
            s = sum(x * x for row in X for x in row)
            if D >= 0 and s < D * D:
                return int(t), dict(sg=sg, tr=tr, rp=rp, cp=cp, N=N), float(D) - math.sqrt(float(s)), Pt, Rt
    return None


def main():
    out = sys.argv[1] if len(sys.argv) > 1 else os.path.join(ROOT, 'kernel_atlas/lean/KernelAtlas/Special')
    raw = json.load(open(os.path.join(ROOT, 'lean/generators/base_anchor/h0.json')))
    S = surd()
    C = [[coeffs(raw[a][b]) for b in range(6)] for a in range(6)]
    TH, BB, ET = [], [], []
    for a in range(6):
        rT, rB, rE = [], [], []
        for b in range(6):
            c = C[a][b]
            z = complex(sum(float(x) * mu_float(k) for k, (x, _) in enumerate(c)),
                        sum(float(y) * mu_float(k) for k, (_, y) in enumerate(c)))
            assert abs(abs(z) - 1) < 1e-12
            th = Fr(math.atan2(z.imag, z.real))
            B, eta = ent_cert(S, c, th)
            rT.append(th); rB.append(B); rE.append(eta)
        TH.append(rT); BB.append(rB); ET.append(rE)
    E = KX_sqrt_up(sum(e * e for r in ET for e in r), den=2 ** 80)
    t, al, m, Pt, Rt = find_member(TH, E)
    print('H0 -> Record %d (margin %.3e), max eta %.2e, E %.2e' % (t, m, float(max(max(r) for r in ET)), float(E)))
    cl = lambda c: '[%s]' % ', '.join('(%s, %s)' % (q_lit(x), q_lit(y)) for x, y in c)
    ll = lambda M: '[%s]' % ', '.join('[%s]' % ', '.join(q_lit(x) for x in row) for row in M)
    ilist = lambda xs: '[%s]' % ', '.join(str(int(x)) for x in xs)
    L = ['import KernelAtlas.AnchorK', 'import KernelAtlas.Table.T%d' % (t // 100), '',
         '/-! The `anchor` field (generated by `export_anchor.py`): `H₀` lies in atlas Record %d (margin %.3e of' % (t, m),
         'R = %s); per-entry phase bounds `η ≤ %.2e`, total slack `Ē = %.2e`. -/' % (float(Rt), float(max(max(r) for r in ET)), float(E)),
         '', 'namespace NoFourMUBs.KernelAtlas.Special', '',
         'open Hadamard6 NoFourMUBs NoFourMUBs.KernelAtlas', '', 'set_option maxRecDepth 100000', '',
         'def surd : SurdQ where', '  l3 := %s' % q_lit(S[3][0]), '  h3 := %s' % q_lit(S[3][1]),
         '  l5 := %s' % q_lit(S[5][0]), '  h5 := %s' % q_lit(S[5][1]), '  l7 := %s' % q_lit(S[7][0]),
         '  h7 := %s' % q_lit(S[7][1]), '',
         '/-- The coefficients of the entries of `H₀` over the surd monomials. -/',
         'def h0C : List (List (List (ℚ × ℚ))) := [%s]' % ',\n  '.join(
             '[%s]' % ', '.join(cl(C[a][b]) for b in range(6)) for a in range(6)), '',
         'def cfE (a b : Fin 6) : List (ℚ × ℚ) := (h0C.getD a.val []).getD b.val []', '',
         'def h0T : List (List ℚ) := %s' % ll(TH), 'def h0B : List (List ℚ) := %s' % ll(BB),
         'def h0E : List (List ℚ) := %s' % ll(ET), '',
         'def thF (a b : Fin 6) : ℚ := (h0T.getD a.val []).getD b.val 0',
         'def bF (a b : Fin 6) : ℚ := (h0B.getD a.val []).getD b.val 0',
         'def etF (a b : Fin 6) : ℚ := (h0E.getD a.val []).getD b.val 0', '',
         'def Ebar : ℚ := %s' % q_lit(E), '']
    for a in range(6):
        for b in range(6):
            L += ['lemma ent_%d_%d : BaseAnchor.ent %d %d = cpoly %s := by' % (a, b, a, b, cl(C[a][b])),
                  '  simp only [BaseAnchor.ent, cpoly, cf, Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one,',
                  '    Matrix.head_cons, List.getD_cons_zero, List.getD_cons_succ]', '  push_cast; ring', '']
    L[2:2] = ['', 'set_option linter.unusedSimpArgs false']
    L += ['theorem ent_poly (a b : Fin 6) : BaseAnchor.ent a b = cpoly (cfE a b) := by',
          '  fin_cases a <;> fin_cases b',
          '  exacts [%s]' % ', '.join('ent_%d_%d' % (a, b) for a in range(6) for b in range(6)), '',
          'theorem surd_ok : surd.ok = true := by decide +kernel', '',
          'set_option maxHeartbeats 0 in',
          'theorem ents_ok : ((List.finRange 6).all fun a => (List.finRange 6).all fun b =>',
          '    entOK surd (cfE a b) (thF a b) %d %d (bF a b) (etF a b)) = true := by decide +kernel' % (NT, PT), '',
          'theorem eta_ok : sq6 (fun i j => etF (finSumFinEquiv i) (finSumFinEquiv j)) ≤ Ebar ^ 2 := by decide +kernel',
          '',
          '/-- `H₀` into atlas Record %d. -/' % t, 'def anchorT : BTgt :=',
          ('  { cj := %s, tr := %s, rp := %s, rpi := %s, cp := %s, cpi := %s,\n    N := %s,\n    Pt := %s, Rt := %s, '
           'Y := [], G := [], Th := [] }') % (
              'true' if al['sg'] == -1 else 'false', 'true' if al['tr'] else 'false', ilist(al['rp']),
              ilist(inv(al['rp'])), ilist(al['cp']), ilist(inv(al['cp'])), ilist([x for r in al['N'] for x in r]),
              'Table.c%d' % t, 'Table.r%d' % t), '',
          'set_option maxHeartbeats 0 in',
          'theorem anchorT_ok : memOKg (fun i j => thF (finSumFinEquiv i) (finSumFinEquiv j)) (fun _ _ => 0) anchorT Ebar',
          '    = true := by decide +kernel', '',
          '/-- **The `anchor` field** for any atlas whose Record `l` is atlas Record %d. -/' % t,
          'theorem anchor {ι : Type*} (A : ι → RecordCert) (l : ι) (hP : (A l).P = Pmat anchorT.pt)',
          '    (hR : (anchorT.Rt : ℝ) ≤ (A l).R) : Step2.CoveredMatrix (InAtlas A) BaseAnchor.H0 :=',
          '  anchorK A l ent_poly surd_ok',
          '    (fun a b => by',
          '      have h := ents_ok',
          '      simp only [List.all_eq_true, List.mem_finRange, forall_const] at h',
          '      exact h a b)',
          '    eta_ok (by unfold Ebar; norm_num) anchorT_ok hP hR', '',
          'end NoFourMUBs.KernelAtlas.Special']
    with open(os.path.join(out, 'Anchor.lean'), 'w') as f:
        f.write('\n'.join(L) + '\n')

    import kpack
    kpack.seal(out)

if __name__ == '__main__':
    main()
