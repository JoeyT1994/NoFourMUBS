import NativeSignedPhysical
import PhysicalColumnGram

set_option autoImplicit false
set_option maxHeartbeats 1500000
set_option maxRecDepth 10000
namespace Centiradian20261006.NativeSigned20261006
open scoped ComplexConjugate BigOperators
noncomputable section

abbrev MixedIndices := Fin 3 × Fin 3 × Fin 3 × Fin 3

/-- Native nested-loop order: row pair, column pair, bottom row, right column. -/
def mixedEncode (q : MixedIndices) : Fin 81 :=
  ⟨27*q.1.val+9*q.2.1.val+3*q.2.2.1.val+q.2.2.2.val, by
    have h₀ := q.1.isLt
    have h₁ := q.2.1.isLt
    have h₂ := q.2.2.1.isLt
    have h₃ := q.2.2.2.isLt
    omega⟩

def mixedDecode (k : Fin 81) : MixedIndices :=
  (⟨k.val/27, by omega⟩, ⟨(k.val/9)%3, Nat.mod_lt _ (by decide)⟩,
    ⟨(k.val/3)%3, Nat.mod_lt _ (by decide)⟩, ⟨k.val%3, Nat.mod_lt _ (by decide)⟩)

theorem mixedDecode_encode (q : MixedIndices) : mixedDecode (mixedEncode q)=q :=
  (by decide : ∀ q : MixedIndices, mixedDecode (mixedEncode q)=q) q

theorem mixedEncode_decode (k : Fin 81) : mixedEncode (mixedDecode k)=k :=
  (by decide : ∀ k : Fin 81, mixedEncode (mixedDecode k)=k) k

/-- This kernel-checked equivalence rules out duplicate or omitted mixed slots. -/
def mixedIndexEquiv : MixedIndices ≃ Fin 81 where
  toFun := mixedEncode
  invFun := mixedDecode
  left_inv := mixedDecode_encode
  right_inv := mixedEncode_decode

/-- The native 94 real residuals, now functions of the actual matrix:
0..8 lower-block norm squares minus one; 9..12 row/column inner-product
real/imaginary parts; 13..93 the literal 81 signed mixed-corner expressions. -/
def residual94 (H : Mat6) (index : Fin 94) : ℝ :=
  if h9 : index.val<9 then
    Complex.normSq (H ⟨3+index.val/3, by omega⟩
      ⟨3+index.val%3, by have := Nat.mod_lt index.val (by decide : 0<3); omega⟩)-1
  else if h13 : index.val<13 then
    let z := if index.val<11 then
      ∑ k : Fin 6, H 2 k*conj (H 1 k)
    else
      ∑ k : Fin 6, H k 2*conj (H k 1)
    if index.val%2=1 then z.re else z.im
  else
    let q := mixedDecode ⟨index.val-13, by omega⟩
    mixedSigned H q.1 q.2.1 q.2.2.1 q.2.2.2

def signedResidualIndex (k : Fin 81) : Fin 94 := ⟨13+k.val, by omega⟩

theorem residual94_at_signed_index (H : Mat6) (k : Fin 81) :
    residual94 H (signedResidualIndex k) =
      mixedSigned H (mixedDecode k).1 (mixedDecode k).2.1
        (mixedDecode k).2.2.1 (mixedDecode k).2.2.2 := by
  have h9 : ¬(signedResidualIndex k).val<9 := by simp [signedResidualIndex]; omega
  have h13 : ¬(signedResidualIndex k).val<13 := by simp [signedResidualIndex]; omega
  simp [residual94,h9,h13,signedResidualIndex]

theorem residual94_at_mixed_index (H : Mat6) (q : MixedIndices) :
    residual94 H (signedResidualIndex (mixedEncode q)) =
      mixedSigned H q.1 q.2.1 q.2.2.1 q.2.2.2 := by
  rw [residual94_at_signed_index,mixedDecode_encode]

/-- All 13 equality residuals follow from Physical H itself, including column
orthogonality derived from the square row-Gram condition. -/
theorem physical_equality_residuals_zero {H : Mat6} (hH : Physical H)
    (index : Fin 94) (hi : index.val<13) : residual94 H index=0 := by
  by_cases h9 : index.val<9
  · simp [residual94,h9,hH.1]
  · have hr : (∑ k : Fin 6, H 2 k*conj (H 1 k))=0 := by
      simpa using hH.2 (2:Fin 6) (1:Fin 6)
    have hc : (∑ k : Fin 6, H k 2*conj (H k 1))=0 := by
      simpa using physical_column_gram hH (2:Fin 6) (1:Fin 6)
    simp [residual94,h9,hi,hr,hc]

/-- The 81 native signed residual inequalities follow from actual physicality
and maximality. No residual inequality is assumed as an extra premise. -/
theorem physical_signed_residuals_bound {H : Mat6} (hH : Physical H)
    (hm : Maximal H) (hR : 0<leadingR H) (index : Fin 94) (hi : 13≤index.val) :
    |residual94 H index| ≤ Real.sqrt (leadingR H) := by
  have h9 : ¬index.val<9 := by omega
  have h13 : ¬index.val<13 := by omega
  simp only [residual94,dif_neg h9,dif_neg h13]
  exact physical_mixed_abs_bound hH hm hR _ _ _ _

/-- Complete necessary condition for the actual native 94-residual vector. -/
theorem physical_residual94_constraints {H : Mat6} (hH : Physical H)
    (hm : Maximal H) (hR : 0<leadingR H) :
    (∀ index : Fin 94, index.val<13 → residual94 H index=0) ∧
      (∀ index : Fin 94, 13≤index.val →
        |residual94 H index| ≤ Real.sqrt (leadingR H)) := by
  exact ⟨physical_equality_residuals_zero hH, physical_signed_residuals_bound hH hm hR⟩

/-- Actual uniform radius-3/100 target. This is a proposition definition only;
the analytic/chart/enclosure/coverage dependencies have not been assembled. -/
def RadiusThreeHundredthsExclusion : Prop :=
  ∀ H : Mat6, Physical H → Dephased H → Maximal H → 0<leadingR H →
    ∀ conjugateSeed : Bool, InPuncturedSeedBall H conjugateSeed (3/100) → False

end
end Centiradian20261006.NativeSigned20261006

#print axioms Centiradian20261006.NativeSigned20261006.mixedDecode_encode
#print axioms Centiradian20261006.NativeSigned20261006.mixedEncode_decode
#print axioms Centiradian20261006.NativeSigned20261006.residual94_at_signed_index
#print axioms Centiradian20261006.NativeSigned20261006.residual94_at_mixed_index
#print axioms Centiradian20261006.NativeSigned20261006.physical_equality_residuals_zero
#print axioms Centiradian20261006.NativeSigned20261006.physical_signed_residuals_bound
#print axioms Centiradian20261006.NativeSigned20261006.physical_residual94_constraints
#print Centiradian20261006.NativeSigned20261006.RadiusThreeHundredthsExclusion
