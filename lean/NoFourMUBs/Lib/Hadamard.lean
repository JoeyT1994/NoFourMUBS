import Mathlib
import Hadamard6.BlockCompletion
import Hadamard6.BlockGram
import Hadamard6.FiniteCornerFromBlocks
import Hadamard6.PhaseEquivalence
import Hadamard6.TaoOrbit

/-!
# The upstream interface, imported narrowly

The proof uses upstream's matrix model (`Hadamard6.Mat6`, `IsHadamard`, `Equivalent`, `IsTaoOrbit`, the
block Gram and completion lemmas), imported here from five leaf modules of
[`all_hadamard_matrices_in_dimension_six`](https://github.com/mateocardeneswuttig/all_hadamard_matrices_in_dimension_six)
(commit `57b0302`); with their own imports they are eleven upstream modules.

The few further upstream declarations the proof uses sit in modules that import most of the upstream
classification. They are short, so they are restated below, copied from upstream with the same statements
and proofs (source file in each docstring):

* the Hadamard quotient `Had6`, `HadamardClass6` and the Tao predicate `TaoClass` (`HadamardQuotient.lean`);
* the primitive cubic phase `standardOmega` (`TaoAtlas.lean`) and `primitiveCubicPhase_eq_standard_or_sq`
  (`FourierSeamCertificate.lean`);
* the affine-Fourier family `affineFourierMatrix` and its Hadamard property, and `transpose_isHadamard`
  (`KarlssonFourierSeam.lean`); `equivalent_transpose` (`FourierSeamCertificate.lean`).

Two short project lemmas used throughout, `mul_conj_of_normSq` and `row_orth`, are also stated here.

The long Fourier-block normalisation and cubic census are not restated; `PRM/FourierBlock` and its neighbours
import those upstream modules directly.
-/

open Hadamard6

noncomputable section

namespace NoFourMUBs

/-! ### Two facts used throughout the project (not from upstream) -/

open ComplexConjugate in
/-- A unit complex number times its conjugate is `1`. -/
theorem mul_conj_of_normSq {z : ℂ} (h : Complex.normSq z = 1) : z * conj z = 1 := by
  rw [Complex.mul_conj, h, Complex.ofReal_one]

open ComplexConjugate in
/-- Distinct rows of a Hadamard matrix are orthogonal. -/
theorem row_orth {H : Mat6} (hH : IsHadamard H) {a b : I6} (hab : a ≠ b) :
    ∑ j, H a j * conj (H b j) = 0 := by
  have h := congrArg (fun M : Mat6 => M a b) hH.2
  simpa [Matrix.mul_apply, Matrix.conjTranspose_apply, Matrix.one_apply, Complex.star_def, hab] using h

/-! ### Unit phases (upstream `UnitSymmetric.lean`) -/

private theorem one_div_eq_star_of_normSq_eq_one {x : ℂ}
    (hx : Complex.normSq x = 1) : 1 / x = star x := by
  have hxne : x ≠ 0 := Complex.normSq_pos.1 (by rw [hx]; norm_num)
  apply (div_eq_iff hxne).2
  have hunit : star x * x = 1 := by
    simpa [Complex.star_def, Complex.normSq_eq_conj_mul_self] using
      congrArg (fun q : ℝ ↦ (q : ℂ)) hx
  exact hunit.symm

/-! ### The Hadamard quotient (upstream `HadamardQuotient.lean`) -/

/-- The type of order-six Hadamard matrices before quotienting. -/
abbrev Had6 := {H : Mat6 // IsHadamard H}

def had6EquivalenceSetoid : Setoid Had6 where
  r H K := Equivalent H.1 K.1
  iseqv := ⟨
    (fun H ↦ equivalent_refl H.1),
    (fun h ↦ equivalent_symm h),
    (fun h₁ h₂ ↦ equivalent_trans h₁ h₂)⟩

/-- Equivalence classes of order-six complex Hadamard matrices. -/
abbrev HadamardClass6 := Quotient had6EquivalenceSetoid

def TaoClass : HadamardClass6 → Prop :=
  Quotient.lift
    (fun H : Had6 ↦ IsTaoOrbit H.1)
    (by
      intro H K hHK
      exact propext (equivalent_isTaoOrbit_iff hHK))

/-! ### The standard primitive cubic phase (upstream `TaoAtlas.lean`, `FourierSeamCertificate.lean`) -/

/-- A fixed primitive cubic phase, used when a concrete witness rather than
an arbitrary primitive phase is required. -/
def standardOmega : ℂ :=
  ⟨-(1 / 2 : ℝ), Real.sqrt 3 / 2⟩

theorem standardOmega_isPrimitiveCubicPhase :
    IsPrimitiveCubicPhase standardOmega := by
  have hsqrt : (Real.sqrt 3) ^ 2 = 3 :=
    Real.sq_sqrt (by norm_num)
  constructor
  · rw [Complex.normSq_apply]
    simp [standardOmega]
    nlinarith
  · apply Complex.ext <;>
      simp [standardOmega, pow_two, Complex.mul_re, Complex.mul_im] <;>
      nlinarith

theorem primitiveCubicPhase_eq_standard_or_sq
    {omega : ℂ} (homega : IsPrimitiveCubicPhase omega) :
    omega = standardOmega ∨ omega = standardOmega ^ 2 := by
  have hstandard := standardOmega_isPrimitiveCubicPhase
  have hsum : standardOmega + standardOmega ^ 2 = -1 := by
    linear_combination hstandard.2
  have hcube : standardOmega ^ 3 = 1 :=
    primitiveCubicPhase_cube hstandard
  have hfactor :
      (omega - standardOmega) * (omega - standardOmega ^ 2) = 0 := by
    calc
      (omega - standardOmega) * (omega - standardOmega ^ 2) =
          omega ^ 2 - (standardOmega + standardOmega ^ 2) * omega +
            standardOmega ^ 3 := by ring
      _ = omega ^ 2 + omega + 1 := by rw [hsum, hcube]; ring
      _ = 0 := homega.2
  rcases mul_eq_zero.mp hfactor with h | h
  · exact Or.inl (sub_eq_zero.mp h)
  · exact Or.inr (sub_eq_zero.mp h)

/-! ### Transposition (upstream `KarlssonFourierSeam.lean`, `FourierSeamCertificate.lean`) -/

/-- Transposition preserves the order-six Hadamard property. -/
theorem transpose_isHadamard {H : Mat6} (hH : IsHadamard H) :
    IsHadamard H.transpose := by
  refine ⟨(fun i j ↦ hH.1 j i), ?_⟩
  have hcol := hadamard_column_gram hH
  ext i j
  have hij := congrArg (fun M : Mat6 ↦ M j i) hcol
  simp only [Matrix.mul_apply, Matrix.conjTranspose_apply,
    Matrix.transpose_apply, Matrix.smul_apply, Matrix.one_apply] at hij ⊢
  simpa [mul_comm, eq_comm] using hij

theorem equivalent_transpose {H K : Mat6}
    (hHK : Equivalent H K) : Equivalent H.transpose K.transpose := by
  rcases hHK with ⟨σ, τ, r, c, hr, hc, hpres⟩
  refine ⟨τ, σ, c, r, hc, hr, ?_⟩
  intro i j
  simp only [Matrix.transpose_apply]
  rw [hpres]
  ring

/-! ### The affine-Fourier family (upstream `KarlssonFourierSeam.lean`) -/

/-- The paper's displayed affine-Fourier family `F₆⁽²⁾(z₁,z₂)`, with the
primitive cubic phase left explicit. -/
def affineFourierMatrix (omega z₁ z₂ : ℂ) : Mat6 :=
  Matrix.fromBlocks
    !![1, 1, 1;
       1, -1, z₁;
       1, 1, omega]
    !![1, 1, 1;
       -z₁, z₂, -z₂;
       omega, omega ^ 2, omega ^ 2]
    !![1, -1, omega * z₁;
       1, 1, omega ^ 2;
       1, -1, omega ^ 2 * z₁]
    !![-omega * z₁, omega ^ 2 * z₂, -(omega ^ 2 * z₂);
       omega ^ 2, omega, omega;
       -(omega ^ 2 * z₁), omega * z₂, -(omega * z₂)]

theorem affineFourierMatrix_entrywiseUnit
    {omega z₁ z₂ : ℂ} (homega : IsPrimitiveCubicPhase omega)
    (hz₁ : Complex.normSq z₁ = 1)
    (hz₂ : Complex.normSq z₂ = 1) :
    EntrywiseUnit (affineFourierMatrix omega z₁ z₂) := by
  intro i j
  rcases i with i | i <;> rcases j with j | j <;>
    fin_cases i <;> fin_cases j <;>
    simp [affineFourierMatrix, Complex.normSq_mul, homega.1,
      primitiveCubicPhase_sq_norm homega, hz₁, hz₂]

theorem affineFourierMatrix_isHadamard
    {omega z₁ z₂ : ℂ} (homega : IsPrimitiveCubicPhase omega)
    (hz₁ : Complex.normSq z₁ = 1)
    (hz₂ : Complex.normSq z₂ = 1) :
    IsHadamard (affineFourierMatrix omega z₁ z₂) := by
  refine ⟨affineFourierMatrix_entrywiseUnit homega hz₁ hz₂, ?_⟩
  have hstarOmega : (starRingEnd ℂ) omega = omega ^ 2 :=
    primitiveCubicPhase_star homega
  have hstarOmegaSq : (starRingEnd ℂ) (omega ^ 2) = omega := by
    rw [map_pow, hstarOmega]
    calc
      (omega ^ 2) ^ 2 = omega * omega ^ 3 := by ring
      _ = omega := by rw [primitiveCubicPhase_cube homega, mul_one]
  have hstarZ₁ : (starRingEnd ℂ) z₁ = 1 / z₁ := by
    exact (one_div_eq_star_of_normSq_eq_one hz₁).symm
  have hstarZ₂ : (starRingEnd ℂ) z₂ = 1 / z₂ := by
    exact (one_div_eq_star_of_normSq_eq_one hz₂).symm
  have hz₁0 : z₁ ≠ 0 := Complex.normSq_pos.1 (by rw [hz₁]; norm_num)
  have hz₂0 : z₂ ≠ 0 := Complex.normSq_pos.1 (by rw [hz₂]; norm_num)
  have homega0 : omega ≠ 0 := primitiveCubicPhase_ne_zero homega
  have hcube : omega ^ 3 = 1 := primitiveCubicPhase_cube homega
  have hpowFour : omega ^ 4 = omega := by
    calc
      omega ^ 4 = omega * omega ^ 3 := by ring
      _ = omega := by rw [hcube, mul_one]
  have hsum : 1 + omega + omega ^ 2 = 0 := by
    linear_combination homega.2
  have hsumTwo : 2 + omega * 2 + omega ^ 2 * 2 = 0 := by
    linear_combination 2 * hsum
  have hsumShifted : 2 + omega ^ 2 * 2 + omega ^ 4 * 2 = 0 := by
    rw [hpowFour]
    linear_combination 2 * hsum
  ext i j
  rcases i with i | i <;> rcases j with j | j <;>
    fin_cases i <;> fin_cases j <;>
    simp [Matrix.mul_apply, Matrix.conjTranspose_apply,
      affineFourierMatrix, Fin.sum_univ_three, hstarOmega,
      hstarOmegaSq, hstarZ₁, hstarZ₂] <;>
    field_simp [hz₁0, hz₂0, homega0] <;>
    norm_num <;>
    ring_nf <;>
    try simp only [hcube, hpowFour] <;>
    ring_nf
  all_goals exact hsumTwo

end NoFourMUBs
