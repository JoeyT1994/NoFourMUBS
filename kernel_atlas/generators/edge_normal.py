"""Emit the F6 graph frame and rational normal certificate; every numeric claim is kernel checked.

The float SVD and Cholesky only predict witnesses. Frame identities, Taylor remainders, and
positive-semidefinite residuals are checked in exact arithmetic and then by Lean's kernel.
"""
from fractions import Fraction as Fr
from pathlib import Path
import numpy as np
import edge_c1e as E
import knormal as K

OUT = Path(__file__).resolve().parents[1] / 'lean/KernelAtlas/Edge/Fourier'
NS = 'NoFourMUBs.KernelAtlas.Edge.Fourier'


def qmat(a):
    return '[' + ', '.join('[' + ', '.join(K.q_lit(x) for x in row) + ']' for row in a) + ']'


def predict_frame():
    """Find the four horizontal null directions, then round and enforce exact row/column sums."""
    ph = np.array([[E.f6k(6*i+j) * np.pi / 3 for j in range(6)] for i in range(6)])
    h = np.eye(6) - np.ones((6, 6)) / 6
    b, _ = np.linalg.qr(np.column_stack([np.outer(h[:, i], h[:, j]).ravel()
                                        for i in range(5) for j in range(5)]))
    z = np.exp(1j * ph)
    jac = np.array([(1j*z*np.conj(z[[r], :]) * (b[:, k].reshape(6, 6)-b[:, k].reshape(6, 6)[[r], :])).sum(1)
                    for k in range(25) for r in range(6)]).reshape(25, 36).T
    _, sv, vt = np.linalg.svd(np.concatenate([jac.real, jac.imag]))
    if not (sv[-4] < 1e-10 and sv[-5] > 1):
        raise RuntimeError('unexpected Fourier horizontal nullity')
    f = (b @ vt[-4:].T).T.reshape(4, 6, 6)
    den = 2**30
    ints = []
    for fk in f:
        a = [[int(round(fk[i, j] * den)) for j in range(5)] for i in range(5)]
        a = [row + [-sum(row)] for row in a]
        a.append([-sum(a[i][j] for i in range(5)) for j in range(6)])
        ints.append(a)
    return ints, den


def main():
    ints, den = predict_frame()
    fc = K.frame_consts(ints, den)
    F = fc['F']
    assert all(sum(F[k][i][j] for i in range(6)) == 0 for k in range(4) for j in range(6))
    assert all(sum(F[k][i]) == 0 for k in range(4) for i in range(6))
    P = [[Fr(E.f6k(6*i+j)*E.PI3Z, E.SC) for j in range(6)] for i in range(6)]
    X, eps = K.tabN_data(P)
    s, lr, stats = K.sigma_cert(X, eps, F, Fr(171, 100))
    OUT.mkdir(exist_ok=True)
    lines = ['import KernelAtlas.Edge.Normal', '', 'namespace '+NS, '',
             'open NoFourMUBs.KernelAtlas NoFourMUBs.KernelAtlas.Seed NoFourMUBs.KernelAtlas.Edge', '',
             'def frameData : List (List (List ℚ)) := [' + ', '.join(qmat(f) for f in F) + ']', '',
             'def frame : QFrame := fun k i j => (((frameData.getD k []).getD (sidx i) []).getD (sidx j) 0)', '',
             'def fq : FrameQ where', '  eG := '+K.q_lit(fc['eG']), '  g := '+K.q_lit(fc['g']),
             '  lam := '+K.q_lit(fc['lam']), '  t := '+K.q_lit(fc['t']),
             '  Gi := !['+', '.join('!['+', '.join(K.q_lit(x) for x in row)+']' for row in fc['Gi'])+']', '',
             'def tabN : Tab where', '  p := '+str(K.PN), '  nT := '+str(K.NTN), '  EUL := []',
             '  EPL := ['+', '.join('['+', '.join('(%d, %d)'%x for x in row)+']' for row in X)+']',
             '  PqL := '+qmat(P), '  epsU := 0', '  epsP := '+K.q_lit(eps), '',
             'set_option maxHeartbeats 0 in', 'def sigq : SigQ where', '  cpen := 10', '  s := '+K.q_lit(s),
             '  Lrows := ['+', '.join('['+', '.join(str(x) for x in row)+']' for row in lr)+']',
             '  Lden := '+str(K.LDEN), '', 'end '+NS]
    (OUT/'Data.lean').write_text('\n'.join(lines)+'\n')
    (OUT/'Check.lean').write_text('''import KernelAtlas.Edge.Fourier.Data

namespace NoFourMUBs.KernelAtlas.Edge.Fourier

open NoFourMUBs.KernelAtlas NoFourMUBs.KernelAtlas.Seed NoFourMUBs.SeedAtlas Hadamard6

theorem frame_checked : frameOK frame fq = true := by decide +kernel

theorem normal_checked : sigmaOK tabN frame sigq (171 / 100) = true := by decide +kernel


end NoFourMUBs.KernelAtlas.Edge.Fourier
''')
    (OUT/'Sound.lean').write_text("""import KernelAtlas.Edge.Fourier.Check

namespace NoFourMUBs.KernelAtlas.Edge.Fourier

open NoFourMUBs.KernelAtlas NoFourMUBs.KernelAtlas.Seed NoFourMUBs.SeedAtlas Hadamard6

theorem center_eq : Pmat tabN.pq = f6Approx := by
  ext i j
  fin_cases i <;> fin_cases j <;> norm_num [Pmat, Tab.pq, tabN, f6Approx, f6k, Seed.ix, Seed.sidx, idx, rq, pp, pi3Z]

theorem normal_bound (ν : RMat6) (hν : IsHorizontal ν)
    (horth : ∀ k, ∑ a, ∑ c, frame.toR k a c * ν a c = 0) :
    (17 / 10 : ℝ) * frob ν ≤ outNorm (Jac F6phase ν) :=
  f6_normal_of_rational normal_checked center_eq ν hν horth

end NoFourMUBs.KernelAtlas.Edge.Fourier
""")
    print(dict(sigma_rational=1.71, sigma_exact=1.7, frame_error=float(fc['eG']), **stats))


if __name__ == '__main__':
    main()
