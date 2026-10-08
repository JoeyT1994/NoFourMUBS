import ChartPartitionFast

/-! One bounded implementation experiment: read each rejection term once,
combining its mandatory availability guard and signed box sum. All split,
image, root and decoder checks are inherited unchanged. Exact equality below
holds for arbitrary tables and states, including missing entries. -/
namespace Mub6.Numerical.CircleCharts.Partition
open Mub6 IntegerIntervals GraphKernel

def signedOptionSum : {n : ℕ} → (Fin n → Bool) → (Fin n → Option ZBox) → Option ZBox
  | 0, _, _ => some (boxPoint 0 0)
  | _ + 1, signs, terms =>
    match terms 0 with
    | none => none
    | some q =>
      match signedOptionSum (fun j => signs j.succ) (fun j => terms j.succ) with
      | none => none
      | some tail => some (boxAdd (signedBox (signs 0) q) tail)

theorem signedOptionSum_eq {n : ℕ} (signs : Fin n → Bool) (terms : Fin n → Option ZBox) :
    signedOptionSum signs terms =
      if ∀ j, (terms j).isSome = true then
        some (boxSum (fun j => signedBox (signs j) (boxValue (terms j)))) else none := by
  induction n with
  | zero => simp [signedOptionSum, boxSum]
  | succ n ih =>
    cases h0 : terms 0 with
    | none => simp [signedOptionSum, h0, Fin.forall_fin_succ]
    | some q =>
      rw [signedOptionSum, h0, ih]
      by_cases ht : ∀ j : Fin n, (terms j.succ).isSome = true
      · simp [ht, Fin.forall_fin_succ, h0, boxSum, boxValue]
      · simp [ht, Fin.forall_fin_succ, h0]

def rejectJoined (tab : Tables) (R : ℕ) (signs : SignChart) (state : State) (k : Fin 6) : Bool :=
  match signedOptionSum signs (fun j => tab.term j k (state j)) with
  | none => false
  | some tail => excludes (boxNormSq (boxAdd (tab.row0 k) tail)) (6 * (R : ℤ)^2)

theorem rejectJoined_eq (tab : Tables) (R : ℕ) (signs : SignChart) (state : State) (k : Fin 6) :
    rejectJoined tab R signs state k =
      (termsDefined tab state k &&
        excludes (boxNormSq (cachedAmplitude tab signs state k)) (6 * (R : ℤ)^2)) := by
  rw [rejectJoined, signedOptionSum_eq]
  by_cases ht : ∀ j, (tab.term j k (state j)).isSome = true
  · simp [ht, termsDefined, cachedAmplitude]
  · simp [ht, termsDefined]

def checkTreeJoined {n : ℕ} (tab : Tables) (R : ℕ) (targets : Fin n → ZRayBox)
    (signs : SignChart) : State → Tree n → Bool
  | state, .keep v => imageDefined tab state &&
      boxSubset (imageBoxes tab signs state) (targets v)
  | state, .reject k => rejectJoined tab R signs state k
  | state, .split j left right => splitCheck tab (state j) &&
      checkTreeJoined tab R targets signs (leftState state j) left &&
      checkTreeJoined tab R targets signs (rightState state j) right
  | _, .unknown => false

theorem checkTreeJoined_eq {n : ℕ} (tab : Tables) (R : ℕ) (targets : Fin n → ZRayBox)
    (signs : SignChart) (tree : Tree n) :
    ∀ state, checkTreeJoined tab R targets signs state tree =
      checkTreeFast tab R targets signs state tree := by
  induction tree with
  | keep v => intro state; rfl
  | reject k => intro state; exact rejectJoined_eq tab R signs state k
  | split j left right ihl ihr =>
    intro state
    simp only [checkTreeJoined, checkTreeFast, ihl, ihr]
  | unknown => intro state; rfl

def checkPackedJoined {n : ℕ} (tab : Tables) (R : ℕ) (targets : Fin n → ZRayBox)
    (signs : SignChart) (state : State) (fuel : ℕ) (words : List ℕ) : Bool :=
  match decodeAll fuel words with
  | none => false
  | some tree => checkTreeJoined tab R targets signs state tree

theorem checkPackedJoined_eq {n : ℕ} (tab : Tables) (R : ℕ) (targets : Fin n → ZRayBox)
    (signs : SignChart) (state : State) (fuel : ℕ) (words : List ℕ) :
    checkPackedJoined tab R targets signs state fuel words =
      checkPackedFast tab R targets signs state fuel words := by
  unfold checkPackedJoined checkPackedFast
  cases decodeAll (n := n) fuel words with
  | none => rfl
  | some tree => exact checkTreeJoined_eq tab R targets signs tree state

theorem coveredState_of_packedJoined {n T R : ℕ} {tab : Tables} {E : CarrierRegion}
    {targets : Fin n → ZRayBox} {signs : SignChart} {state : State}
    {fuel : ℕ} {words : List ℕ}
    (hi : ImageSound tab T R) (hc : TermSound tab E T R)
    (hcheck : checkPackedJoined tab R targets signs state fuel words = true) :
    CoveredState tab E T R targets signs state := by
  exact coveredState_of_packedFast hi hc (by rwa [checkPackedJoined_eq] at hcheck)

def checkHexJoined {n : ℕ} (tab : Tables) (R : ℕ) (targets : Fin n → ZRayBox)
    (signs : SignChart) (state : State) (fuel count : ℕ) (hex : String) : Bool :=
  match decodeHex count hex.toList with
  | none => false
  | some words => checkPackedJoined tab R targets signs state fuel words

theorem checkHexJoined_eq {n : ℕ} (tab : Tables) (R : ℕ) (targets : Fin n → ZRayBox)
    (signs : SignChart) (state : State) (fuel count : ℕ) (hex : String) :
    checkHexJoined tab R targets signs state fuel count hex =
      checkHexFast tab R targets signs state fuel count hex := by
  unfold checkHexJoined checkHexFast
  cases decodeHex count hex.toList with
  | none => rfl
  | some words => exact checkPackedJoined_eq tab R targets signs state fuel words

theorem coveredState_of_hexJoined {n T R : ℕ} {tab : Tables} {E : CarrierRegion}
    {targets : Fin n → ZRayBox} {signs : SignChart} {state : State}
    {fuel count : ℕ} {hex : String}
    (hi : ImageSound tab T R) (hc : TermSound tab E T R)
    (hcheck : checkHexJoined tab R targets signs state fuel count hex = true) :
    CoveredState tab E T R targets signs state := by
  exact coveredState_of_hexFast hi hc (by rwa [checkHexJoined_eq] at hcheck)

#print axioms signedOptionSum_eq
#print axioms rejectJoined_eq
#print axioms checkTreeJoined_eq
#print axioms checkPackedJoined_eq
#print axioms coveredState_of_packedJoined
#print axioms checkHexJoined_eq
#print axioms coveredState_of_hexJoined
end Mub6.Numerical.CircleCharts.Partition
