import PhysicalMeanClearing

/-! The actual horizontal side has a real signed invariant whose square is
the seed R. This supplies two-root exhaustion without a side-constructor
classification or any interval-certificate assumptions. Matching horizontal
and vertical signs remains a different obligation. -/
set_option autoImplicit false
namespace Centiradian20261006.NativeMean20261006
open scoped BigOperators ComplexConjugate
open SignedDeterminant NativeSigned20261006
noncomputable section

/-- The sign convention f=i*rawDet used by the mean backend. -/
def physicalSideSign (H : Mat6) : ℝ := -cornerSigned H 0 1 2 3 4 5

theorem side_complement_columns :
    ({3,4,5}:Finset (Fin 6))ᶜ=leadingCols := by decide

theorem physicalSideSign_square {H : Mat6} (hH : Physical H) :
    (physicalSideSign H)^2=leadingR H := by
  rw [physicalSideSign,neg_sq,physical_signed_square_complement hH 0 1 2 3 4 5
    (by decide) (by decide) (by decide) (by decide),side_complement_columns]
  rfl

theorem physicalSideSign_two_roots {H : Mat6} (hH : Physical H) (hR : 0≤leadingR H) :
    physicalSideSign H=Real.sqrt (leadingR H) ∨
    physicalSideSign H= -Real.sqrt (leadingR H) := by
  have hs := physicalSideSign_square hH
  have hq := Real.sq_sqrt hR
  have hqn := Real.sqrt_nonneg (leadingR H)
  rcases le_total 0 (physicalSideSign H) with hp | hn
  · left
    nlinarith
  · right
    nlinarith

theorem physicalSideSign_nonzero {H : Mat6} (hH : Physical H) (hR : 0<leadingR H) :
    physicalSideSign H ≠ 0 := by
  intro hz
  have hs := physicalSideSign_square hH
  rw [hz] at hs
  nlinarith

end
end Centiradian20261006.NativeMean20261006

#print axioms Centiradian20261006.NativeMean20261006.side_complement_columns
#print axioms Centiradian20261006.NativeMean20261006.physicalSideSign_square
#print axioms Centiradian20261006.NativeMean20261006.physicalSideSign_two_roots
#print axioms Centiradian20261006.NativeMean20261006.physicalSideSign_nonzero
