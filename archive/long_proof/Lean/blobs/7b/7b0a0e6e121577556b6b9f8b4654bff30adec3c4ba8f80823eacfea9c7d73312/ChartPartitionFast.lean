import HexChartPartition

/-! ONE optimization: omit stateDefined at recursive nodes. Soundness assumes
StateMem, supplied by rootCheck and preserved by the mandatory splitCheck.
The original checker, table arithmetic, lookup guards and decoder are unchanged.
This standalone checker is intentionally not a validator of arbitrary states. -/
namespace Mub6.Numerical.CircleCharts.Partition
open Mub6 IntegerIntervals GraphKernel

def checkTreeFast {n : ℕ} (tab : Tables) (R : ℕ) (targets : Fin n → ZRayBox)
    (signs : SignChart) : State → Tree n → Bool
  | state, .keep v => imageDefined tab state &&
      boxSubset (imageBoxes tab signs state) (targets v)
  | state, .reject k => termsDefined tab state k &&
      excludes (boxNormSq (cachedAmplitude tab signs state k)) (6 * (R : ℤ)^2)
  | state, .split j left right => splitCheck tab (state j) &&
      checkTreeFast tab R targets signs (leftState state j) left &&
      checkTreeFast tab R targets signs (rightState state j) right
  | _, .unknown => false

theorem checkTreeFast_sound {n T R : ℕ} (tab : Tables) (E : CarrierRegion)
    (targets : Fin n → ZRayBox) (hsImage : ImageSound tab T R)
    (hsTerm : TermSound tab E T R) (tree : Tree n) (signs : SignChart)
    {H : BasisMatrix} (hH : CarrierBox E H) {t : Parameters}
    (hcommon : IsRawCommonRay H (chartRay signs t)) :
    ∀ state, checkTreeFast tab R targets signs state tree = true → StateMem tab T state t →
      ∃ v, MemRayBox R (targets v) (chartRay signs t) := by
  induction tree with
  | keep v =>
    intro state hc ht
    have hh : imageDefined tab state = true ∧
        boxSubset (imageBoxes tab signs state) (targets v) = true := by
      simpa only [checkTreeFast, Bool.and_eq_true] using hc
    exact ⟨v, boxSubset_sound hh.2 (imageBoxes_sound hsImage hh.1 ht)⟩
  | reject k =>
    intro state hc ht
    have hh : termsDefined tab state k = true ∧
        excludes (boxNormSq (cachedAmplitude tab signs state k)) (6*(R : ℤ)^2) = true := by
      simpa only [checkTreeFast, Bool.and_eq_true] using hc
    apply False.elim
    apply excludes_sound hh.2 (mem_boxNormSq (cachedAmplitude_sound hsTerm hH k hh.1 ht))
    rw [normSq_scaled, hcommon.2 k]
    push_cast
    ring
  | split j left right ihLeft ihRight =>
    intro state hc ht
    have hh : (splitCheck tab (state j) = true ∧
        checkTreeFast tab R targets signs (leftState state j) left = true) ∧
        checkTreeFast tab R targets signs (rightState state j) right = true := by
      simpa only [checkTreeFast, Bool.and_eq_true] using hc
    rcases state_split_cover j hh.1.1 ht with hl | hr
    · exact ihLeft _ hh.1.2 hl
    · exact ihRight _ hh.2 hr
  | unknown => intro state hc; simp [checkTreeFast] at hc

def checkPackedFast {n : ℕ} (tab : Tables) (R : ℕ) (targets : Fin n → ZRayBox)
    (signs : SignChart) (state : State) (fuel : ℕ) (words : List ℕ) : Bool :=
  match decodeAll fuel words with
  | none => false
  | some tree => checkTreeFast tab R targets signs state tree

theorem coveredState_of_packedFast {n T R : ℕ} {tab : Tables} {E : CarrierRegion}
    {targets : Fin n → ZRayBox} {signs : SignChart} {state : State}
    {fuel : ℕ} {words : List ℕ}
    (hi : ImageSound tab T R) (hc : TermSound tab E T R)
    (hcheck : checkPackedFast tab R targets signs state fuel words = true) :
    CoveredState tab E T R targets signs state := by
  intro H hH t ht hz
  cases hd : decodeAll (n := n) fuel words with
  | none => simp [checkPackedFast, hd] at hcheck
  | some tree =>
    exact checkTreeFast_sound tab E targets hi hc tree signs hH hz state
      (by simpa [checkPackedFast, hd] using hcheck) ht

def checkHexFast {n : ℕ} (tab : Tables) (R : ℕ) (targets : Fin n → ZRayBox)
    (signs : SignChart) (state : State) (fuel count : ℕ) (hex : String) : Bool :=
  match decodeHex count hex.toList with
  | none => false
  | some words => checkPackedFast tab R targets signs state fuel words

theorem coveredState_of_hexFast {n T R : ℕ} {tab : Tables} {E : CarrierRegion}
    {targets : Fin n → ZRayBox} {signs : SignChart} {state : State}
    {fuel count : ℕ} {hex : String}
    (hi : ImageSound tab T R) (hc : TermSound tab E T R)
    (hcheck : checkHexFast tab R targets signs state fuel count hex = true) :
    CoveredState tab E T R targets signs state := by
  cases hd : decodeHex count hex.toList with
  | none => simp only [checkHexFast, hd, Bool.false_eq_true] at hcheck
  | some words =>
    exact coveredState_of_packedFast hi hc (by simpa only [checkHexFast, hd] using hcheck)

def checkPackedAllFast {n : ℕ} (tab : Tables) (T R : ℕ) (targets : Fin n → ZRayBox)
    (fuel : ℕ) (words : SignChart → List ℕ) : Bool :=
  decide (0 < T ∧ 0 < R) && rootCheck tab T &&
    decide (∀ signs, checkPackedFast tab R targets signs rootState fuel (words signs) = true)

theorem checkPackedAllFast_sound {n T R : ℕ} {tab : Tables} {E : CarrierRegion}
    {targets : Fin n → ZRayBox} {fuel : ℕ} {words : SignChart → List ℕ}
    (hi : ImageSound tab T R) (hc : TermSound tab E T R)
    (hcheck : checkPackedAllFast tab T R targets fuel words = true) :
    CompleteUniformRayCover E (fun v => toRawRayBox R (targets v)) := by
  have hh : ((0 < T ∧ 0 < R) ∧ rootCheck tab T = true) ∧
      (∀ signs, checkPackedFast tab R targets signs rootState fuel (words signs) = true) := by
    simpa only [checkPackedAllFast, Bool.and_eq_true, decide_eq_true_eq] using hcheck
  exact all_chart_roots_sound hh.1.1.1 hh.1.1.2 hh.1.2
    (fun signs => coveredState_of_packedFast hi hc (hh.2 signs))

private def invalidStateControl : Tables where
  parameter _ := none
  image _ := some (boxPoint 0 0)
  term _ _ _ := none
  row0 _ := boxPoint 0 0

/-- Documented interface difference: the standalone fast leaf accepts this
invalid state. Its required StateMem cannot hold and the full-root guard fails. -/
theorem standalone_invalid_state_control :
    stateDefined invalidStateControl rootState = false ∧
    checkTreeFast invalidStateControl 1 (fun _ : Fin 1 => fun _ => boxPoint 0 0)
      (fun _ => false) rootState (.keep 0) = true ∧
    rootCheck invalidStateControl 1 = false := by decide

theorem invalid_state_has_no_parameters (t : Parameters) :
    ¬ StateMem invalidStateControl 1 rootState t := by
  intro ht
  have h := (ht 0).2.1
  simp [invalidStateControl, rootState] at h

theorem missing_root_fails_fast {n : ℕ} {tab : Tables} (T R fuel : ℕ)
    (targets : Fin n → ZRayBox) (words : SignChart → List ℕ)
    (hp : tab.parameter 1 = none) :
    checkPackedAllFast tab T R targets fuel words = false := by
  simp [checkPackedAllFast, rootCheck, hp]

#print axioms checkTreeFast_sound
#print axioms coveredState_of_packedFast
#print axioms coveredState_of_hexFast
#print axioms checkPackedAllFast_sound
#print axioms standalone_invalid_state_control
#print axioms invalid_state_has_no_parameters
#print axioms missing_root_fails_fast
#check checkTreeFast_sound
end Mub6.Numerical.CircleCharts.Partition
