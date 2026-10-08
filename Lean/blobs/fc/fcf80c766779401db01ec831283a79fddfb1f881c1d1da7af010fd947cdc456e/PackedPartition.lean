import IntegerPartition

namespace Mub6.Numerical.IntegerIntervals.Packed

/-- Inverse of the zigzag encoding: 2k ↦ k, 2k+1 ↦ -(k+1). -/
def signedCut (word : Nat) : Int :=
  if word % 2 = 0 then Int.ofNat (word / 2) else -(Int.ofNat (word / 2 + 1))

/-- A total preorder decoder. `fuel` bounds depth, and malformed or truncated
input returns `none`. Each split word is 256 + 10 * zigzag(cut) + axis. -/
def decode {n : Nat} : Nat → List Nat → Option (ZPartition n × List Nat)
  | 0, _ => none
  | fuel + 1, [] => none
  | fuel + 1, word :: rest =>
      if h : word < 5 then
        some (.reject (.unit ⟨word, h⟩), rest)
      else if h : word < 11 then
        some (.reject (.amplitude ⟨word - 5, by omega⟩), rest)
      else if h : 128 ≤ word ∧ word < 128 + n then
        some (.keep ⟨word - 128, by omega⟩, rest)
      else if word < 256 then
        none
      else
        let payload := word - 256
        let axis := payload % 10
        let j : Fin 5 := ⟨axis / 2, by omega⟩
        let imag : Bool := decide (axis % 2 = 1)
        let cut := signedCut (payload / 10)
        do
          let (left, afterLeft) ← decode fuel rest
          let (right, afterRight) ← decode fuel afterLeft
          return (.split j imag cut left right, afterRight)

def decodeAll {n : Nat} (fuel : Nat) (words : List Nat) : Option (ZPartition n) := do
  let (tree, remaining) ← decode fuel words
  if remaining.isEmpty then some tree else none

def checkPacked {n : Nat} (S : Nat) (E : ZCarrier) (boxes : Fin n → ZRayBox)
    (root : ZRayBox) (fuel : Nat) (words : List Nat) : Bool :=
  match decodeAll fuel words with
  | none => false
  | some tree => checkZPartition S E boxes root tree

theorem checkPacked_sound {n S : Nat} (hS : 0 < S) (E : ZCarrier)
    (boxes : Fin n → ZRayBox) (root : ZRayBox) (fuel : Nat) (words : List Nat)
    (h : checkPacked S E boxes root fuel words = true) :
    CoveredBy S E boxes root := by
  cases hd : decodeAll (n := n) fuel words with
  | none => simp [checkPacked, hd] at h
  | some tree =>
      exact coveredBy_of_check hS (by simpa [checkPacked, hd] using h)

#print axioms checkPacked_sound

end Mub6.Numerical.IntegerIntervals.Packed
