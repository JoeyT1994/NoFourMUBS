import CriticalGeometricActualLambda
import CriticalUnitSumTerminal

set_option autoImplicit false
namespace CriticalAllocatedBlockGeometric20261003
open Matrix CriticalPhysical20261003 CriticalLightSheet20261003
open CriticalGeometricBinding20261003 CriticalUnitSumTerminal20261003
noncomputable section

/-- Literal allocated norms and the actual physical identities force the
pointwise conjugate-row relation, with the original common phase preserved. -/
theorem allocated_block_conjugate_rows (E : Block) (z : ℝ)
    (hE : ∀ i j,Complex.normSq (E i j)=1) (h0 : ∀ j,E 0 j=1)
    (hz0 : z≠0) (hz3 : z≠ -3) (hz2 : z≠ -2)
    (hs : Complex.normSq (sideS E)=z+3) (ht : Complex.normSq (sideT E)=z+3)
    (hr : Complex.normSq (sideR E)=(1-z)*(z+3)) (hj : sideJ E=0) :
    ∀ j,E 2 j=(sideS E*sideT E/((z+3:ℝ):ℂ))*star (E 1 j) := by
  obtain ⟨hk,hp⟩ := allocated_product_sum_phase E z hE h0 hz0 hz3 hz2 hs ht hr hj
  exact maximal_product_sum_conjugate_rows (E 1) (E 2) _ (hE 1) (hE 2) hk hp

/-- A single normalized column fixes the common phase to one. No coordinate
root ordering, distinctness, square-root phase gauge or permutation of the
three columns is used. -/
theorem allocated_normalized_block_conjugate_rows (E : Block) (z : ℝ)
    (hE : ∀ i j,Complex.normSq (E i j)=1) (h0 : ∀ j,E 0 j=1)
    (h10 : E 1 0=1) (h20 : E 2 0=1)
    (hz0 : z≠0) (hz3 : z≠ -3) (hz2 : z≠ -2)
    (hs : Complex.normSq (sideS E)=z+3) (ht : Complex.normSq (sideT E)=z+3)
    (hr : Complex.normSq (sideR E)=(1-z)*(z+3)) (hj : sideJ E=0) :
    sideS E*sideT E/((z+3:ℝ):ℂ)=1 ∧ ∀ j,E 2 j=star (E 1 j) := by
  have hp := allocated_block_conjugate_rows E z hE h0 hz0 hz3 hz2 hs ht hr hj
  have hk : sideS E*sideT E/((z+3:ℝ):ℂ)=1 := by
    simpa only [h10,h20,star_one,mul_one] using (hp 0).symm
  refine ⟨hk,?_⟩
  intro j
  simpa only [hk,one_mul] using hp j

end
#print axioms allocated_block_conjugate_rows
#print axioms allocated_normalized_block_conjugate_rows
end CriticalAllocatedBlockGeometric20261003
