import KernelAtlas.Edge.Fourier.Check

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
