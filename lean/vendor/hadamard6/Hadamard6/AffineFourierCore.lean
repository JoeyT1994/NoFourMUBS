import Hadamard6.TaoOrbit
import Hadamard6.UnitSymmetric
import Hadamard6.BlockGram

/-! Shared declarations moved unchanged from KarlssonFourierSeam.lean. -/

noncomputable section
namespace Hadamard6

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

theorem transpose_isHadamard_iff {H : Mat6} :
    IsHadamard H.transpose ↔ IsHadamard H := by
  constructor
  · intro hHT
    simpa using transpose_isHadamard hHT
  · exact transpose_isHadamard

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
  have hz₁0 : z₁ ≠ 0 := ne_zero_of_normSq_eq_one hz₁
  have hz₂0 : z₂ ≠ 0 := ne_zero_of_normSq_eq_one hz₂
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


end Hadamard6
