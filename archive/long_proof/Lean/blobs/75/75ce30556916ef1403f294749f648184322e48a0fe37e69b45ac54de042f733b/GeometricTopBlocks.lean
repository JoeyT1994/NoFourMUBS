import GeometricRowsTriples

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace GeometricNormalization20261003
open Hadamard6
noncomputable section

def splitPerm (σ : Equiv.Perm (Fin 6)) : Equiv.Perm I6 :=
  (Worker12.splitIndex.trans σ).trans Worker12.splitIndex.symm

def orderedMatrix (H : Mub6.BasisMatrix) (ρ : Fin 3 ↪ Fin 6)
    (σ : Equiv.Perm (Fin 6)) : Mat6 :=
  reindexMatrix (Worker12.selectedPermutation ρ) (splitPerm σ) (Worker12.splitMatrix H)

theorem orderedMatrix_row (H : Mub6.BasisMatrix) (ρ : Fin 3 ↪ Fin 6)
    (σ : Equiv.Perm (Fin 6)) (i : I3) (j : I6) :
    orderedMatrix H ρ σ (Sum.inl i) j=H (ρ i) (σ (Worker12.splitIndex j)) := by
  simp [orderedMatrix,reindexMatrix,Worker12.splitMatrix,
    Worker12.selectedPermutation_apply,splitPerm]

theorem orderedMatrix_isHadamard {H : Mub6.BasisMatrix}
    (hH : Mub6.Numerical.PhaseHadamard H) (ρ : Fin 3 ↪ Fin 6)
    (σ : Equiv.Perm (Fin 6)) : IsHadamard (orderedMatrix H ρ σ) :=
  reindexMatrix_isHadamard (Worker12.splitMatrix_isHadamard
    (CriticalFourierRouting20261003.phaseHadamard_boundary hH))

theorem orderedMatrix_equivalent (H : Mub6.BasisMatrix) (ρ : Fin 3 ↪ Fin 6)
    (σ : Equiv.Perm (Fin 6)) : Equivalent (Worker12.splitMatrix H) (orderedMatrix H ρ σ) :=
  equivalent_reindexMatrix _ _ _

/-- Row and column permutations and three unit row phases produce the literal
two top Fourier blocks, while retaining the conjugate parameter relation. -/
theorem geometric_rows_top_blocks {H : Mub6.BasisMatrix}
    (hH : Mub6.Numerical.PhaseHadamard H) (ρ : Fin 3 ↪ Fin 6) (x : Fin 6 → ℂ)
    (h0 : ∀ j, H (ρ 0) j=1)
    (h1 : ∀ j, H (ρ 1) j=x j)
    (h2 : ∀ j, H (ρ 2) j=star (x j)) :
    ∃ K : Mat6, IsHadamard K ∧ Equivalent (Worker12.splitMatrix H) K ∧
      ∃ ω u : ℂ, Worker12.PrimitiveCubicPhase ω ∧ Complex.normSq u=1 ∧
        Matrix.toBlocks₁₁ K=fourier3 ω ∧
        Matrix.toBlocks₁₂ K=rowGauge (fourierParameters u (star u)) (fourier3 ω) := by
  obtain ⟨ω,a,b,hω,ha,hb,σ,hσ⟩ :=
    GeometricSixRoots20261003.geometric_rows_standard_ordered hH ρ x h0 h1 h2
  let L := orderedMatrix H ρ σ
  have hL0 (j : I6) : L (Sum.inl 0) j=1 := by
    rw [orderedMatrix_row]
    exact (hσ (Worker12.splitIndex j)).1
  have hL1 (j : I6) : L (Sum.inl 1) j=
      ![a,a*ω,a*ω^2,b,b*ω,b*ω^2] (Worker12.splitIndex j) := by
    rw [orderedMatrix_row]
    exact (hσ (Worker12.splitIndex j)).2.1
  have hL2 (j : I6) : L (Sum.inl 2) j=
      star (![a,a*ω,a*ω^2,b,b*ω,b*ω^2] (Worker12.splitIndex j)) := by
    rw [orderedMatrix_row]
    exact (hσ (Worker12.splitIndex j)).2.2
  let φ : I6 → ℂ := Sum.elim ![1,star a,a] (fun _ => 1)
  have hφ : ∀ i, Complex.normSq (φ i)=1 := by
    intro i
    rcases i with i | i
    · fin_cases i <;> simp [φ,Complex.star_def,ha]
    · simp [φ]
  let K := phaseTransform φ (fun _ => 1) L
  have hK : IsHadamard K := phaseTransform_isHadamard hφ (by intro i; simp)
    (orderedMatrix_isHadamard hH ρ σ)
  have he : Equivalent (Worker12.splitMatrix H) K := equivalent_trans
    (orderedMatrix_equivalent H ρ σ) (equivalent_phaseTransform hφ (by intro i; simp))
  have hu : Complex.normSq (star a*b)=1 := by
    simp [Complex.normSq_mul,Complex.star_def,ha,hb]
  have haInv := GeometricSixRoots20261003.unit_star_eq_inv ha
  have han := GeometricSixRoots20261003.unit_ne_zero ha
  have hωs := star_eq_square_of_quadratic_unit hω.1 hω.2
  have hωs2 := star_square_eq_of_quadratic_unit hω.1 hω.2
  have hω4 : ω^4=ω := by
    rw [show ω^4=ω*ω^3 by ring,GeometricSixRoots20261003.cubic_phase_cube hω.2,mul_one]
  refine ⟨K,hK,he,ω,star a*b,hω,hu,?_,?_⟩
  · rw [Worker12.fourier3_power_eq_literal hω.2]
    ext i j
    fin_cases i <;> fin_cases j <;>
      simp [K,phaseTransform,φ,hL0,hL1,hL2,Worker12.splitIndex,finSumFinEquiv,
        Worker12.fourier3,star_mul,star_pow,hωs,hωs2,hω4,haInv] <;>
      field_simp [han] <;> ring
  · rw [Worker12.fourier3_power_eq_literal hω.2]
    ext i j
    fin_cases i <;> fin_cases j <;>
      simp [K,phaseTransform,φ,hL0,hL1,hL2,Worker12.splitIndex,finSumFinEquiv,
        Worker12.fourier3,rowGauge,fourierParameters,star_mul,star_pow,hωs,hωs2,hω4,haInv] <;>
      field_simp [han] <;> ring

end
end GeometricNormalization20261003
#print axioms GeometricNormalization20261003.orderedMatrix_row
#print axioms GeometricNormalization20261003.orderedMatrix_isHadamard
#print axioms GeometricNormalization20261003.orderedMatrix_equivalent
#print axioms GeometricNormalization20261003.geometric_rows_top_blocks
