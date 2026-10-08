import ClassificationFiniteReuseJoin
import StrictSideScalarGuards

/-! The paper's four oriented endpoint guards are exactly the already checked
strict reconstruction divisors. This reuses its finite-fibre theorem on the
entire strict locus, without det E or product-regularity assumptions. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace StrictReconstruction20261007.SideIntrinsic
open Centiradian20261006
open scoped ComplexConjugate
noncomputable section

theorem rowFibreEndpoint0_eq_sideP1 (G : Hadamard6.Mat3) :
    Hadamard6.rowFibreEndpoint0 G=sideP1 (G 1 0) (G 2 0) (G 2 1) := by
  unfold Hadamard6.rowFibreEndpoint0 sideP1 sideP0
  simp only [Complex.star_def]
  rw [← Complex.mul_conj (G 2 0)]
  ring

theorem rowFibreEndpoint3_eq_neg_conj_sideP0 (G : Hadamard6.Mat3) :
    Hadamard6.rowFibreEndpoint3 G= -conj (sideP0 (G 1 0) (G 2 0) (G 2 1)) := by
  simp only [Hadamard6.rowFibreEndpoint3,sideP0,Complex.star_def,map_add,map_sub,
    map_mul,map_pow,map_ofNat,Complex.conj_ofReal,show conj (conj (G 2 1))=G 2 1 from by simp]
  rw [← Complex.mul_conj (G 2 1)]
  ring

theorem sideP0_swap (s t r : ℂ) :
    sideP0 t s (conj r)=sideP0 s t r := by
  simp [sideP0]
  <;> ring

theorem swapped_rowFibre_endpoints (G : Hadamard6.Mat3) (hG : G.IsHermitian) :
    Hadamard6.rowFibreEndpoint0 (Hadamard6.swapRowGram G)=
      sideP2 (G 1 0) (G 2 0) (G 2 1) ∧
    Hadamard6.rowFibreEndpoint3 (Hadamard6.swapRowGram G)=
      -conj (sideP0 (G 1 0) (G 2 0) (G 2 1)) := by
  have h12 : G 1 2=conj (G 2 1) := by
    simpa only [Complex.star_def] using (hG.apply (1 : Fin 3) 2).symm
  constructor
  · rw [rowFibreEndpoint0_eq_sideP1]
    simp only [Hadamard6.swapRowGram,Hadamard6.swapNoninitialIndex_zero,
      Hadamard6.swapNoninitialIndex_one,Hadamard6.swapNoninitialIndex_two,h12,sideP1,sideP2]
  · rw [rowFibreEndpoint3_eq_neg_conj_sideP0]
    simp only [Hadamard6.swapRowGram,Hadamard6.swapNoninitialIndex_zero,
      Hadamard6.swapNoninitialIndex_one,Hadamard6.swapNoninitialIndex_two,h12,sideP0_swap]

theorem normalizedRowGramFibre_finite_of_strict_invariant (G : Hadamard6.Mat3)
    (hG : G.IsHermitian) (hR : 0 < gramInvariant (G 1 0) (G 2 0) (G 2 1)) :
    (Hadamard6.normalizedRowGramFibre G).Finite := by
  obtain ⟨h0,h1,h2⟩ := strict_sideP_nonzero hR
  obtain ⟨hs0,hs3⟩ := swapped_rowFibre_endpoints G hG
  apply reused_finite_fibre_criterion
  · rw [rowFibreEndpoint0_eq_sideP1]
    exact h1
  · rw [rowFibreEndpoint3_eq_neg_conj_sideP0]
    simpa using h0
  · rw [hs0]
    exact h2
  · rw [hs3]
    simpa using h0

#print axioms rowFibreEndpoint0_eq_sideP1
#print axioms rowFibreEndpoint3_eq_neg_conj_sideP0
#print axioms sideP0_swap
#print axioms swapped_rowFibre_endpoints
#print axioms normalizedRowGramFibre_finite_of_strict_invariant
end
end StrictReconstruction20261007.SideIntrinsic
