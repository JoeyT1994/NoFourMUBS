import ChartPartitionJoined

namespace Mub6.Numerical.CircleCharts.Partition
open Mub6 IntegerIntervals GraphKernel

/-- All 32 Boolean sign charts, positive scales, and the closed root interval
are checked exactly as in the fast implementation. -/
def checkPackedAllJoined {n : ℕ} (tab : Tables) (T R : ℕ) (targets : Fin n → ZRayBox)
    (fuel : ℕ) (words : SignChart → List ℕ) : Bool :=
  decide (0 < T ∧ 0 < R) && rootCheck tab T &&
    decide (∀ signs, checkPackedJoined tab R targets signs rootState fuel (words signs) = true)

theorem checkPackedAllJoined_eq {n : ℕ} (tab : Tables) (T R : ℕ) (targets : Fin n → ZRayBox)
    (fuel : ℕ) (words : SignChart → List ℕ) :
    checkPackedAllJoined tab T R targets fuel words =
      checkPackedAllFast tab T R targets fuel words := by
  simp only [checkPackedAllJoined, checkPackedAllFast, checkPackedJoined_eq]

theorem checkPackedAllJoined_sound {n T R : ℕ} {tab : Tables} {E : CarrierRegion}
    {targets : Fin n → ZRayBox} {fuel : ℕ} {words : SignChart → List ℕ}
    (hi : ImageSound tab T R) (hc : TermSound tab E T R)
    (hcheck : checkPackedAllJoined tab T R targets fuel words = true) :
    CompleteUniformRayCover E (fun v => toRawRayBox R (targets v)) := by
  exact checkPackedAllFast_sound hi hc (by rwa [checkPackedAllJoined_eq] at hcheck)

/-- A missing term at any of the five coordinates fails, even if the default
zero interval would otherwise make the rejection inequality true. -/
theorem missing_term_fails_joined {tab : Tables} (R : ℕ) (signs : SignChart)
    (state : State) (k : Fin 6) (j : Fin 5) (hmissing : tab.term j k (state j) = none) :
    rejectJoined tab R signs state k = false := by
  rw [rejectJoined_eq]
  have hn : ¬ ∀ i, (tab.term i k (state i)).isSome = true := by
    intro hall
    have hh := hall j
    simp [hmissing] at hh
  simp [termsDefined, hn]

theorem missing_image_fails_joined {n : ℕ} {tab : Tables} (R : ℕ)
    (targets : Fin n → ZRayBox) (signs : SignChart) (state : State) (v : Fin n)
    (j : Fin 5) (hmissing : tab.image (state j) = none) :
    checkTreeJoined tab R targets signs state (.keep v) = false := by
  have hn : ¬ ∀ i, (tab.image (state i)).isSome = true := by
    intro hall
    have hh := hall j
    simp [hmissing] at hh
  simp [checkTreeJoined, imageDefined, hn]

theorem failed_split_fails_joined {n : ℕ} {tab : Tables} (R : ℕ)
    (targets : Fin n → ZRayBox) (signs : SignChart) (state : State)
    (j : Fin 5) (left right : Tree n) (hfailed : splitCheck tab (state j) = false) :
    checkTreeJoined tab R targets signs state (.split j left right) = false := by
  simp [checkTreeJoined, hfailed]

theorem missing_root_fails_joined {n : ℕ} {tab : Tables} (T R fuel : ℕ)
    (targets : Fin n → ZRayBox) (words : SignChart → List ℕ)
    (hp : tab.parameter 1 = none) :
    checkPackedAllJoined tab T R targets fuel words = false := by
  rw [checkPackedAllJoined_eq]
  exact missing_root_fails_fast T R fuel targets words hp

private def emptyTermsControl : Tables where
  parameter _ := none
  image _ := some (boxPoint 0 0)
  term _ _ _ := none
  row0 _ := boxPoint 0 0

private def boundaryControl : Tables where
  parameter h := if h = 1 then some ⟨-1, 1⟩ else
    if h = 2 then some ⟨-1, 0⟩ else if h = 3 then some ⟨0, 1⟩ else none
  image _ := some (boxPoint 0 0)
  term _ _ _ := some (boxPoint 0 0)
  row0 _ := ⟨⟨2, 3⟩, ⟨0, 0⟩⟩

/-- The interval [4,9] contains 6, so it cannot reject an amplitude equation.
The shared parameter endpoint 0 belongs to both closed child intervals. -/
theorem closed_boundary_controls :
    rejectJoined boundaryControl 1 (fun _ => false) rootState 0 = false ∧
    splitCheck boundaryControl 1 = true ∧
    ParameterMem boundaryControl 1 2 0 ∧ ParameterMem boundaryControl 1 3 0 := by
  refine ⟨by decide, by decide, ?_, ?_⟩ <;>
    norm_num [ParameterMem, boundaryControl, intervalValue, Mem]

theorem missing_terms_and_unknown_controls :
    rejectJoined emptyTermsControl 1 (fun _ => false) rootState 0 = false ∧
    checkPackedJoined emptyTermsControl 1 (fun _ : Fin 1 => fun _ => boxPoint 0 0)
      (fun _ => false) rootState 2 [255] = false ∧
    checkPackedJoined emptyTermsControl 1 (fun _ : Fin 1 => fun _ => boxPoint 0 0)
      (fun _ => false) rootState 2 [128, 128] = false ∧
    checkHexJoined emptyTermsControl 1 (fun _ : Fin 1 => fun _ => boxPoint 0 0)
      (fun _ => false) rootState 2 1 "80 " = false := by decide

theorem signed_interval_control :
    signedOptionSum (fun _ : Fin 1 => true)
      (fun _ => some ⟨⟨-2, 4⟩, ⟨-5, 7⟩⟩) = some ⟨⟨-4, 2⟩, ⟨-7, 5⟩⟩ := by decide

#print axioms checkPackedAllJoined_eq
#print axioms checkPackedAllJoined_sound
#print axioms missing_term_fails_joined
#print axioms missing_image_fails_joined
#print axioms failed_split_fails_joined
#print axioms missing_root_fails_joined
#print axioms closed_boundary_controls
#print axioms missing_terms_and_unknown_controls
#print axioms signed_interval_control
end Mub6.Numerical.CircleCharts.Partition
