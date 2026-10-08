import ChartPartition

namespace Mub6.Numerical.CircleCharts.Partition
open Mub6 IntegerIntervals GraphKernel

/-- Total preorder decoder for the scout byte format. Opcodes 5..10 reject an
amplitude, 64..68 split a coordinate, and 128+v keep target v. Byte 255 is always
unknown and fails, including when n is large. Every other byte fails. -/
def decode {n : ℕ} : ℕ → List ℕ → Option (Tree n × List ℕ)
  | 0, _ => none
  | _+1, [] => none
  | fuel+1, word :: rest =>
      if h : 5 ≤ word ∧ word < 11 then
        some (.reject ⟨word-5, by omega⟩, rest)
      else if h : 64 ≤ word ∧ word < 69 then do
        let (left, afterLeft) ← decode fuel rest
        let (right, afterRight) ← decode fuel afterLeft
        return (.split ⟨word-64, by omega⟩ left right, afterRight)
      else if h : 128 ≤ word ∧ word < 255 ∧ word < 128+n then
        some (.keep ⟨word-128, by omega⟩, rest)
      else none

def decodeAll {n : ℕ} (fuel : ℕ) (words : List ℕ) : Option (Tree n) := do
  let (tree, remaining) ← decode fuel words
  if remaining.isEmpty then some tree else none

def checkPacked {n : ℕ} (tab : Tables) (R : ℕ) (targets : Fin n → ZRayBox)
    (signs : SignChart) (state : State) (fuel : ℕ) (words : List ℕ) : Bool :=
  match decodeAll fuel words with
  | none => false
  | some tree => checkTree tab R targets signs state tree

theorem checkPacked_sound {n T R : ℕ} (tab : Tables) (E : CarrierRegion)
    (targets : Fin n → ZRayBox) (hsImage : ImageSound tab T R)
    (hsTerm : TermSound tab E T R) (signs : SignChart) (state : State)
    (fuel : ℕ) (words : List ℕ)
    (hc : checkPacked tab R targets signs state fuel words = true)
    {H : BasisMatrix} (hH : CarrierBox E H) {t : Parameters}
    (hcommon : IsRawCommonRay H (chartRay signs t)) (ht : StateMem tab T state t) :
    ∃ v, MemRayBox R (targets v) (chartRay signs t) := by
  cases hd : decodeAll (n := n) fuel words with
  | none => simp [checkPacked, hd] at hc
  | some tree =>
    exact checkTree_sound tab E targets hsImage hsTerm tree signs hH hcommon state
      (by simpa [checkPacked, hd] using hc) ht

def checkPackedAll {n : ℕ} (tab : Tables) (T R : ℕ) (targets : Fin n → ZRayBox)
    (fuel : ℕ) (words : SignChart → List ℕ) : Bool :=
  decide (0 < T ∧ 0 < R) && rootCheck tab T &&
    decide (∀ signs, checkPacked tab R targets signs rootState fuel (words signs) = true)

/-- Every one of the 32 sign charts is checked. The two arc-table soundness
hypotheses remain explicit until the separate table checker proves them. -/
theorem checkPackedAll_sound {n T R : ℕ} {tab : Tables} {E : CarrierRegion}
    {targets : Fin n → ZRayBox} {fuel : ℕ} {words : SignChart → List ℕ}
    (hsImage : ImageSound tab T R) (hsTerm : TermSound tab E T R)
    (hc : checkPackedAll tab T R targets fuel words = true) :
    CompleteUniformRayCover E (fun v => toRawRayBox R (targets v)) := by
  have hh : ((0 < T ∧ 0 < R) ∧ rootCheck tab T = true) ∧
      (∀ signs, checkPacked tab R targets signs rootState fuel (words signs) = true) := by
    simpa only [checkPackedAll, Bool.and_eq_true, decide_eq_true_eq] using hc
  intro H _hphysical hH z hz
  rcases (raw_ray_chart_iff z).1 hz.1 with ⟨signs, t, ht, he⟩
  have hcommon : IsRawCommonRay H (chartRay signs t) := he ▸ hz
  obtain ⟨v, hv⟩ := checkPacked_sound tab E targets hsImage hsTerm signs rootState fuel
    (words signs) (hh.2 signs) hH hcommon (rootCheck_sound hh.1.2 ht)
  refine ⟨v, ?_⟩
  rw [he]
  exact (mem_toRawRayBox_iff hh.1.1.2 _ _).2 hv

/-- Malformed format controls are kernel computations on tiny examples, not a
replay or an admission of the scout's complete numerical payload. -/
theorem decoder_rejects_unknown (fuel : ℕ) (rest : List ℕ) :
    decode (n := 200) fuel (255 :: rest) = none := by
  cases fuel <;> simp [decode]

theorem decoder_rejects_malformed_controls :
    decodeAll (n := 1) 4 [] = none ∧
    decodeAll (n := 1) 4 [0] = none ∧
    decodeAll (n := 1) 4 [64, 128] = none ∧
    decodeAll (n := 1) 4 [128, 128] = none ∧
    decodeAll (n := 1) 4 [129] = none ∧
    decodeAll (n := 1) 4 [256] = none := by decide

theorem decode_valid_split_control :
    decodeAll (n := 1) 3 [64, 128, 5] = some (.split 0 (.keep 0) (.reject 0)) := by
  decide

theorem unknown_tree_fails {n : ℕ} (tab : Tables) (R : ℕ) (targets : Fin n → ZRayBox)
    (signs : SignChart) (state : State) :
    checkTree tab R targets signs state .unknown = false := rfl

theorem undefined_state_fails {n : ℕ} (tab : Tables) (R : ℕ)
    (targets : Fin n → ZRayBox) (signs : SignChart) (state : State)
    (hd : stateDefined tab state = false) (tree : Tree n) :
    checkTree tab R targets signs state tree = false := by
  cases tree <;> simp [checkTree, hd]

theorem undefined_image_keep_fails {n : ℕ} (tab : Tables) (R : ℕ)
    (targets : Fin n → ZRayBox) (signs : SignChart) (state : State)
    (hd : imageDefined tab state = false) (v : Fin n) :
    checkTree tab R targets signs state (.keep v) = false := by simp [checkTree, hd]

theorem undefined_term_reject_fails {n : ℕ} (tab : Tables) (R : ℕ)
    (targets : Fin n → ZRayBox) (signs : SignChart) (state : State) (k : Fin 6)
    (hd : termsDefined tab state k = false) :
    checkTree tab R targets signs state (.reject k) = false := by simp [checkTree, hd]

#print axioms checkPacked_sound
#print axioms checkPackedAll_sound
#print axioms decoder_rejects_unknown
#print axioms decoder_rejects_malformed_controls
#print axioms decode_valid_split_control
#print axioms unknown_tree_fails
#print axioms undefined_state_fails
#print axioms undefined_image_keep_fails
#print axioms undefined_term_reject_fails
#check checkPackedAll_sound
end Mub6.Numerical.CircleCharts.Partition
