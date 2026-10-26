import KernelAtlas.WholeBall.MatrixBounds
import Mathlib.Analysis.SpecificLimits.Normed

/-!
# Matrix enclosures and certified inverses

Entrywise rational enclosures give Euclidean operator error bounds by
Cauchy–Schwarz. The inverse is the exact nonsingular matrix inverse; a proposed
preconditioner is used only to certify its existence and its error.
-/

open Matrix
open scoped Matrix.Norms.L2Operator

namespace NoFourMUBs.KernelAtlas.WholeBall

structure MatrixBox (m n : ℕ) where
  mid : Matrix (Fin m) (Fin n) ℚ
  rad : Matrix (Fin m) (Fin n) ℚ

def MatrixBox.Has {m n : ℕ} (B : MatrixBox m n) (A : Matrix (Fin m) (Fin n) ℝ) : Prop :=
  ∀ i j, |A i j - (B.mid i j : ℝ)| ≤ (B.rad i j : ℝ)

def frobeniusCheck {m n : ℕ} (A : Matrix (Fin m) (Fin n) ℚ) (b : ℚ) : Bool :=
  decide (0 ≤ b ∧ ∑ i, ∑ j, (A i j) ^ 2 ≤ b ^ 2)

theorem norm_eucMap_le_of_sum_sq {m n : ℕ} (A : Matrix (Fin m) (Fin n) ℝ)
    {b : ℝ} (hb : 0 ≤ b) (hA : ∑ i, ∑ j, (A i j) ^ 2 ≤ b ^ 2) :
    ‖eucMap A‖ ≤ b := by
  apply ContinuousLinearMap.opNorm_le_bound _ hb
  intro v
  have hv : ∑ j, (v j) ^ 2 = ‖v‖ ^ 2 := (EuclideanSpace.real_norm_sq_eq v).symm
  have hAv : ‖eucMap A v‖ ^ 2 ≤ (∑ i, ∑ j, (A i j) ^ 2) * ‖v‖ ^ 2 := by
    rw [EuclideanSpace.real_norm_sq_eq, Finset.sum_mul]
    apply Finset.sum_le_sum
    intro i _
    change (∑ j, A i j * v j) ^ 2 ≤ (∑ j, (A i j) ^ 2) * ‖v‖ ^ 2
    rw [← hv]
    exact Finset.sum_mul_sq_le_sq_mul_sq _ _ _
  apply (sq_le_sq₀ (norm_nonneg _) (mul_nonneg hb (norm_nonneg _))).mp
  calc
    _ ≤ (∑ i, ∑ j, (A i j) ^ 2) * ‖v‖ ^ 2 := hAv
    _ ≤ b ^ 2 * ‖v‖ ^ 2 := mul_le_mul_of_nonneg_right hA (sq_nonneg _)
    _ = (b * ‖v‖) ^ 2 := (mul_pow _ _ _).symm

theorem frobeniusCheck_sound {m n : ℕ} {A : Matrix (Fin m) (Fin n) ℚ} {b : ℚ}
    (h : frobeniusCheck A b = true) : ‖eucMap (realMatrix A)‖ ≤ (b : ℝ) := by
  have hh : 0 ≤ b ∧ ∑ i, ∑ j, (A i j) ^ 2 ≤ b ^ 2 := of_decide_eq_true h
  apply norm_eucMap_le_of_sum_sq _ (by exact_mod_cast hh.1)
  change ∑ i, ∑ j, ((A i j : ℝ)) ^ 2 ≤ (b : ℝ) ^ 2
  exact_mod_cast hh.2

theorem MatrixBox.error_bound {m n : ℕ} {B : MatrixBox m n} {A : Matrix (Fin m) (Fin n) ℝ}
    (h : B.Has A) {e : ℚ} (he : frobeniusCheck B.rad e = true) :
    ‖eucMap (A - realMatrix B.mid)‖ ≤ (e : ℝ) := by
  have hh : 0 ≤ e ∧ ∑ i, ∑ j, (B.rad i j) ^ 2 ≤ e ^ 2 := of_decide_eq_true he
  apply norm_eucMap_le_of_sum_sq _ (by exact_mod_cast hh.1)
  calc
    _ ≤ ∑ i, ∑ j, ((B.rad i j : ℝ)) ^ 2 := by
      apply Finset.sum_le_sum
      intro i _
      apply Finset.sum_le_sum
      intro j _
      have hij := h i j
      exact (sq_abs _).symm.le.trans
        (pow_le_pow_left₀ (abs_nonneg _) hij 2)
    _ ≤ (e : ℝ) ^ 2 := by exact_mod_cast hh.2

/-- A spectral bound at the midpoint plus a Frobenius error bound encloses
every real matrix in the interval box. -/
theorem MatrixBox.spectral_bound {m n : ℕ} {B : MatrixBox m n} {A : Matrix (Fin m) (Fin n) ℝ}
    (h : B.Has A) {b e : ℚ} {W : PSDWitness n}
    (hb : spectralCheck B.mid b W = true) (he : frobeniusCheck B.rad e = true) :
    ‖eucMap A‖ ≤ (b : ℝ) + e := by
  change ‖A‖ ≤ (b : ℝ) + e
  have hm : ‖realMatrix B.mid‖ ≤ (b : ℝ) := spectralCheck_sound hb
  have hr : ‖A - realMatrix B.mid‖ ≤ (e : ℝ) := MatrixBox.error_bound h he
  calc
    _ ≤ ‖realMatrix B.mid‖ + ‖A - realMatrix B.mid‖ := by
      convert norm_add_le (realMatrix B.mid) (A - realMatrix B.mid) using 1
      abel_nf
    _ ≤ _ := add_le_add hm hr

theorem abs_entry_le_opNorm {m n : ℕ} (A : Matrix (Fin m) (Fin n) ℝ) (i : Fin m) (j : Fin n) :
    |A i j| ≤ ‖eucMap A‖ := by
  let v : EuclideanSpace ℝ (Fin n) := PiLp.single 2 j 1
  have hv : ‖v‖ = 1 := by simp [v]
  have he : eucMap A v i = A i j := by
    change (A *ᵥ (Pi.single j 1)) i = A i j
    simp
  rw [← he, ← Real.norm_eq_abs]
  exact (PiLp.norm_apply_le (eucMap A v) i).trans (by simpa [hv] using (eucMap A).le_opNorm v)

/-- A Neumann residual gives nonsingularity and an enclosure of the *exact*
inverse, including a directly reusable operator error bound. -/
theorem inverse_enclosure {n : ℕ} (A Y : Matrix (Fin n) (Fin n) ℝ) {q y : ℝ}
    (hq : q < 1) (hE : ‖1 - Y * A‖ ≤ q) (hY : ‖Y‖ ≤ y) :
    IsUnit A.det ∧ ‖A⁻¹‖ ≤ y / (1 - q) ∧ ‖A⁻¹ - Y‖ ≤ q * y / (1 - q) := by
  have hYA : IsUnit (Y * A) := by
    have hh := isUnit_one_sub_of_norm_lt_one (hE.trans_lt hq)
    simpa only [sub_sub_cancel] using hh
  have hA : IsUnit A.det := by
    have hh := hYA.map (Matrix.detMonoidHom)
    change IsUnit (Y * A).det at hh
    rw [Matrix.det_mul] at hh
    exact isUnit_of_mul_isUnit_right hh
  have hid : A⁻¹ - Y = (1 - Y * A) * A⁻¹ := by
    rw [Matrix.sub_mul, Matrix.one_mul, Matrix.mul_assoc, Matrix.mul_nonsing_inv _ hA,
      Matrix.mul_one]
  have hq0 : 0 ≤ q := (norm_nonneg _).trans hE
  have hres : ‖A⁻¹ - Y‖ ≤ q * ‖A⁻¹‖ := by
    rw [hid]
    exact (Matrix.l2_opNorm_mul _ _).trans (mul_le_mul_of_nonneg_right hE (norm_nonneg _))
  have hinv : ‖A⁻¹‖ ≤ y / (1 - q) := by
    apply (le_div_iff₀ (sub_pos.mpr hq)).mpr
    have ht := norm_sub_le_norm_sub_add_norm_sub A⁻¹ Y 0
    simp only [sub_zero] at ht
    nlinarith
  refine ⟨hA, hinv, hres.trans ?_⟩
  simpa only [mul_div_assoc] using mul_le_mul_of_nonneg_left hinv hq0

end NoFourMUBs.KernelAtlas.WholeBall
