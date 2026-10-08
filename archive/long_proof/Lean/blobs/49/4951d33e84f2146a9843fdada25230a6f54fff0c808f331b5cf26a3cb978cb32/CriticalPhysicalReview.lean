import CriticalStripPhysical

set_option autoImplicit false
namespace CriticalPhysicalReview20261003
open Mub6 Mub6.Classification
open CompactCover GlobalCornerDomain CriticalPhysical20261003
open CriticalRowSum20261003
open scoped BigOperators
noncomputable section

/-- The actual twenty blocks, with both signs and the full closed physical bounds.
No determinant, strictness, nonzero correlation or J hypothesis is assumed. -/
theorem literal_twenty_corner_constraints {H : CompactCover.Mat6}
    (hH : AllCritical H) (c : Fin 20) :
    let A := H.submatrix GoodMinor.front (triples c)
    let s := sideS A
    let t := sideT A
    let r := sideR A
    let p := Complex.normSq s + Complex.normSq t + Complex.normSq r
    let j := 2*(r*s*star t).re
    let w := Complex.normSq s*Complex.normSq t + Complex.normSq s*Complex.normSq r +
      Complex.normSq t*Complex.normSq r - Complex.normSq s*Complex.normSq t*Complex.normSq r
    0≤p ∧ p+|j|≤9 ∧
      4*(27-3*p+j)^2*(9-p+j) - (w-(p-9)*(p-18)+(p-15)*j)^2=0 ∧
      4*(27-3*p-j)^2*(9-p-j) - (w-(p-9)*(p-18)-(p-15)*j)^2=0 := by
  simpa [stripCorner,sideP,sideJ,sideW,momentP,momentJ,momentW,
    CriticalScalarReduction20261003.R,sub_eq_add_neg] using
    allCritical_strip_scalar_premises hH c

/-- The same invariant in the 108 identity is identified with the count packet. -/
theorem same_actual_twenty_values {H : CompactCover.Mat6} (hH : NormalizedCarrier H) :
    (∀ c : Fin 20, sideP (stripCorner H c)=cornerP H GoodMinor.front c) ∧
    (∑ c : Fin 20, sideP (stripCorner H c))=108 :=
  ⟨stripP_count_binding hH,stripP_sum hH⟩

/-- Reversal in the list is actual same-row complementation, not conjugation. -/
theorem same_row_complement {H : CompactCover.Mat6} (hH : NormalizedCarrier H)
    (c : Fin 20) :
    sideS (stripCorner H (Fin.rev c)) = -sideS (stripCorner H c) ∧
    sideT (stripCorner H (Fin.rev c)) = -sideT (stripCorner H c) ∧
    sideR (stripCorner H (Fin.rev c)) = -sideR (stripCorner H c) :=
  strip_complementary_moments hH c

/-- Every ordered candidate remains in precisely the same all-critical domain. -/
theorem all_ordered_corners {H : CompactCover.Mat6} (hH : AllCritical H)
    (p q : Perm) : AllCritical (CanonicalCorners.candidate H p q) :=
  allCritical_candidate hH p q

end
#print axioms literal_twenty_corner_constraints
#print axioms same_actual_twenty_values
#print axioms same_row_complement
#print axioms all_ordered_corners
end CriticalPhysicalReview20261003
