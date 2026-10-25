import KernelAtlas.Edge.Image
import KernelAtlas.Edge.Frame
import KernelAtlas.SigmaK

/-! Transfer of the rational-centre normal certificate to the exact Fourier centre. -/

open Matrix Hadamard6 NoFourMUBs.SeedAtlas

noncomputable section

namespace NoFourMUBs.KernelAtlas.Edge

open Seed

/-- The rational centre used by the Fourier normal-bound table. -/
def f6Approx : RMat6 := fun i j => rq ((f6k (Seed.ix i j) : ℤ) * pi3Z)

theorem f6Approx_error : frob (f6Approx - F6phase) ≤ rn 30 := by
  have he (i j : I6) : |(f6Approx - F6phase) i j| ≤ rn 5 := by
    have h := pi3_mul_bound (f6k (Seed.ix i j))
    have hk : f6k (Seed.ix i j) ≤ 5 := by unfold f6k; omega
    have hb : rn (Int.natAbs (f6k (Seed.ix i j) : ℤ)) ≤ rn 5 := by
      simpa only [Int.natAbs_natCast] using rn_mono hk
    refine (show |(f6Approx - F6phase) i j| ≤ rn (Int.natAbs (f6k (Seed.ix i j) : ℤ)) from ?_).trans hb
    change |rq ((f6k (Seed.ix i j) : ℤ) * pi3Z) - Real.pi * ((xidx i * xidx j) % 6 : ℕ) / 3| ≤ _
    rw [← f6k_ix]
    simpa only [rq, Int.cast_natCast] using h
  apply Seed.frob_le_of_entries (rn_nonneg 30)
  have H : sumsq (f6Approx - F6phase) ≤ ∑ _i : I6, ∑ _j : I6, (rn 5) ^ 2 := by
    apply Finset.sum_le_sum
    intro i _
    apply Finset.sum_le_sum
    intro j _
    simpa only [sq_abs] using (sq_le_sq₀ (abs_nonneg _) (rn_nonneg 5)).mpr (he i j)
  calc sumsq (f6Approx - F6phase) ≤ ∑ _i : I6, ∑ _j : I6, (rn 5) ^ 2 := H
    _ = (rn 30) ^ 2 := by simp [rn, pp, Fintype.card_sum, Fintype.card_fin]; norm_num

/-- A checked bound of 171/100 at the rounded Fourier centre implies 17/10 at exact F6. -/
theorem f6_normal_of_rational {F : QFrame} {tb : Tab} {S : SigQ}
    (hok : sigmaOK tb F S (171 / 100) = true) (hc : Pmat tb.pq = f6Approx)
    (ν : RMat6) (hν : IsHorizontal ν) (horth : ∀ k, ∑ a, ∑ c, F.toR k a c * ν a c = 0) :
    (17 / 10 : ℝ) * frob ν ≤ outNorm (Jac F6phase ν) := by
  have hσ := sigma_sound hok ν hν horth
  rw [hc] at hσ
  norm_num at hσ
  have hJ := Method.outNorm_jac_sub_le F6phase (f6Approx - F6phase) ν
  rw [add_sub_cancel] at hJ
  have hsum := outNorm_add_le (Jac f6Approx ν - Jac F6phase ν) (Jac F6phase ν)
  rw [sub_add_cancel] at hsum
  have hn := frob_nonneg ν
  have hsmall : 2 * Real.sqrt 3 * rn 30 ≤ (1 / 100 : ℝ) := by
    have hs : Real.sqrt 3 ≤ 2 := by apply Real.sqrt_le_iff.mpr; norm_num
    have hr := rn_nonneg 30
    have hlt : 4 * rn 30 ≤ (1 / 100 : ℝ) := by norm_num [rn, pp]
    nlinarith
  have he := mul_le_mul_of_nonneg_left f6Approx_error
    (show 0 ≤ 2 * Real.sqrt 3 by positivity)
  have he' := mul_le_mul_of_nonneg_right (he.trans hsmall) hn
  linarith

end NoFourMUBs.KernelAtlas.Edge
