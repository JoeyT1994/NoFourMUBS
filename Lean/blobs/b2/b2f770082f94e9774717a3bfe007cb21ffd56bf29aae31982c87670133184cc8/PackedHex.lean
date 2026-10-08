import PackedPartition

namespace Mub6.Numerical.IntegerIntervals.PackedHex

def nibble (c : Char) : Option Nat :=
  let k := c.toNat
  if 48 ≤ k ∧ k < 58 then some (k - 48)
  else if 65 ≤ k ∧ k < 71 then some (k - 55)
  else none

def readWord : List Char → Option (Nat × List Char)
  | a :: b :: c :: d :: e :: f :: g :: h :: rest => do
      let na ← nibble a
      let nb ← nibble b
      let nc ← nibble c
      let nd ← nibble d
      let ne ← nibble e
      let nf ← nibble f
      let ng ← nibble g
      let nh ← nibble h
      return (na * 268435456 + nb * 16777216 + nc * 1048576 + nd * 65536 +
        ne * 4096 + nf * 256 + ng * 16 + nh, rest)
  | _ => none

def readWords : Nat → List Char → Option (List Nat × List Char)
  | 0, rest => some ([], rest)
  | n + 1, text => do
      let (word, afterWord) ← readWord text
      let (words, afterWords) ← readWords n afterWord
      return (word :: words, afterWords)

def checkHexPacked {n : Nat} (S : Nat) (E : ZCarrier) (boxes : Fin n → ZRayBox)
    (root : ZRayBox) (fuel count : Nat) (text : String) : Bool :=
  match readWords count text.toList with
  | some (words, []) => Packed.checkPacked S E boxes root fuel words
  | _ => false

theorem checkHexPacked_sound {n S : Nat} (hS : 0 < S) (E : ZCarrier)
    (boxes : Fin n → ZRayBox) (root : ZRayBox) (fuel count : Nat) (text : String)
    (h : checkHexPacked S E boxes root fuel count text = true) :
    CoveredBy S E boxes root := by
  cases hd : readWords count text.data with
  | none => simp [checkHexPacked, hd] at h
  | some value =>
      rcases value with ⟨words, rest⟩
      cases rest with
      | nil =>
          apply Packed.checkPacked_sound hS E boxes root fuel words
          simpa [checkHexPacked, hd] using h
      | cons _ _ => simp [checkHexPacked, hd] at h

#print axioms checkHexPacked_sound

end Mub6.Numerical.IntegerIntervals.PackedHex
