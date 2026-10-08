import ChartCoverageAssembly

namespace Mub6.Numerical.CircleCharts.Partition
open Mub6 IntegerIntervals

/-- ASCII hexadecimal only; no whitespace, sign, prefix or Unicode substitute. -/
def hexDigit (c : Char) : Option ℕ :=
  if 48 ≤ c.toNat ∧ c.toNat ≤ 57 then some (c.toNat - 48)
  else if 65 ≤ c.toNat ∧ c.toNat ≤ 70 then some (c.toNat - 65 + 10)
  else if 97 ≤ c.toNat ∧ c.toNat ≤ 102 then some (c.toNat - 97 + 10)
  else none

/-- Exactly two hexadecimal characters per opcode, exactly `count` opcodes,
and exact exhaustion of the string. No ignored trailing characters. -/
def decodeHex : ℕ → List Char → Option (List ℕ)
  | 0, [] => some []
  | 0, _ :: _ => none
  | count+1, a :: b :: rest => do
      let x ← hexDigit a
      let y ← hexDigit b
      let tail ← decodeHex count rest
      return (16*x+y) :: tail
  | _+1, _ => none

def checkHex {n : ℕ} (tab : Tables) (R : ℕ) (targets : Fin n → ZRayBox)
    (signs : SignChart) (state : State) (fuel count : ℕ) (hex : String) : Bool :=
  match decodeHex count hex.toList with
  | none => false
  | some words => checkPacked tab R targets signs state fuel words

theorem coveredState_of_hex {n T R : ℕ} {tab : Tables} {E : CarrierRegion}
    {targets : Fin n → ZRayBox} {signs : SignChart} {state : State}
    {fuel count : ℕ} {hex : String}
    (hi : ImageSound tab T R) (hc : TermSound tab E T R)
    (hcheck : checkHex tab R targets signs state fuel count hex = true) :
    CoveredState tab E T R targets signs state := by
  cases hd : decodeHex count hex.toList with
  | none => simp only [checkHex, hd, Bool.false_eq_true] at hcheck
  | some words =>
    exact coveredState_of_packed hi hc (by simpa only [checkHex, hd] using hcheck)

theorem decodeHex_exact_lengths {count : ℕ} {chars : List Char} {words : List ℕ}
    (h : decodeHex count chars = some words) :
    chars.length = 2*count ∧ words.length = count := by
  induction count generalizing chars words with
  | zero =>
    cases chars with
    | nil => simp [decodeHex] at h; subst words; simp
    | cons a rest => simp [decodeHex] at h
  | succ count ih =>
    cases chars with
    | nil => simp [decodeHex] at h
    | cons a rest =>
      cases rest with
      | nil => simp [decodeHex] at h
      | cons b tail =>
        cases ha : hexDigit a with
        | none => simp [decodeHex, ha] at h
        | some x =>
          cases hb : hexDigit b with
          | none => simp [decodeHex, ha, hb] at h
          | some y =>
            cases ht : decodeHex count tail with
            | none => simp [decodeHex, ha, hb, ht] at h
            | some ws =>
              have he : (16*x+y) :: ws = words := by simpa [decodeHex, ha, hb, ht] using h
              subst words
              have hh := ih ht
              simp only [List.length_cons]
              omega

theorem hex_format_controls :
    decodeHex 0 "".toList = some [] ∧
    decodeHex 3 "408005".toList = some [64,128,5] ∧
    decodeHex 2 "aF0B".toList = some [175,11] ∧
    decodeHex 1 "8".toList = none ∧
    decodeHex 1 "8000".toList = none ∧
    decodeHex 1 "80 ".toList = none ∧
    decodeHex 1 "0x".toList = none ∧
    decodeHex 1 "gg".toList = none ∧
    decodeHex 0 "00".toList = none := by decide

#print axioms coveredState_of_hex
#print axioms decodeHex_exact_lengths
#print axioms hex_format_controls
#check coveredState_of_hex
end Mub6.Numerical.CircleCharts.Partition
