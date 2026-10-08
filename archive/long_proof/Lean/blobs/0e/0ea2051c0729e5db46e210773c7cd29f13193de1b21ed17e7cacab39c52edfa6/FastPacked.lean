import PackedHex
import IntegerFastPartition

namespace Mub6.Numerical.IntegerIntervals.Performance02

/-- The same total hex and preorder decoders as the frozen bundle, followed
by the existing verified Boolean-coordinate child update. -/
def checkFastHexPacked {n : Nat} (S : Nat) (E : ZCarrier)
    (boxes : Fin n → ZRayBox) (root : ZRayBox) (fuel count : Nat)
    (text : String) : Bool :=
  match PackedHex.readWords count text.toList with
  | some (words, []) =>
      match Packed.decodeAll fuel words with
      | some tree => checkFastPartition S E boxes root tree
      | none => false
  | _ => false

theorem checkFastHexPacked_eq {n : Nat} (S : Nat) (E : ZCarrier)
    (boxes : Fin n → ZRayBox) (root : ZRayBox) (fuel count : Nat)
    (text : String) :
    checkFastHexPacked S E boxes root fuel count text =
      PackedHex.checkHexPacked S E boxes root fuel count text := by
  unfold checkFastHexPacked PackedHex.checkHexPacked Packed.checkPacked
  cases hwords : PackedHex.readWords count text.toList with
  | none => simp [hwords]
  | some pair =>
      rcases pair with ⟨words, rest⟩
      cases rest with
      | cons head tail => simp [hwords]
      | nil =>
          change (match Packed.decodeAll fuel words with
            | some tree => checkFastPartition S E boxes root tree
            | none => false) =
            (match Packed.decodeAll fuel words with
            | none => false
            | some tree => checkZPartition S E boxes root tree)
          cases htree : Packed.decodeAll fuel words with
          | none => rfl
          | some tree =>
              simpa only using checkFastPartition_eq S E boxes tree root

theorem checkFastHexPacked_sound {n S : Nat} (hS : 0 < S) (E : ZCarrier)
    (boxes : Fin n → ZRayBox) (root : ZRayBox) (fuel count : Nat)
    (text : String)
    (h : checkFastHexPacked S E boxes root fuel count text = true) :
    CoveredBy S E boxes root := by
  apply PackedHex.checkHexPacked_sound hS E boxes root fuel count text
  exact (checkFastHexPacked_eq S E boxes root fuel count text).symm.trans h

#print axioms checkFastHexPacked_eq
#print axioms checkFastHexPacked_sound

end Mub6.Numerical.IntegerIntervals.Performance02
