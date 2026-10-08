import PackedChartPartition

/-! State semantics permit separately checked subtrees to be assembled with
closed splits. This adds no assertion about a concrete scout payload. -/
namespace Mub6.Numerical.CircleCharts.Partition
open Mub6 IntegerIntervals GraphKernel

def CoveredState {n : ℕ} (tab : Tables) (T R : ℕ) (E : CarrierRegion)
    (targets : Fin n → ZRayBox) (signs : SignChart) (state : State) : Prop :=
  ∀ H, CarrierBox E H → ∀ t : Parameters, StateMem tab T state t →
    IsRawCommonRay H (chartRay signs t) →
    ∃ v, MemRayBox R (targets v) (chartRay signs t)

theorem coveredState_of_check {n T R : ℕ} {tab : Tables} {E : CarrierRegion}
    {targets : Fin n → ZRayBox} {signs : SignChart} {state : State} {tree : Tree n}
    (hi : ImageSound tab T R) (hc : TermSound tab E T R)
    (hcheck : checkTree tab R targets signs state tree = true) :
    CoveredState tab T R E targets signs state := by
  intro H hH t ht hz
  exact checkTree_sound tab E targets hi hc tree signs hH hz state hcheck ht

theorem coveredState_of_packed {n T R : ℕ} {tab : Tables} {E : CarrierRegion}
    {targets : Fin n → ZRayBox} {signs : SignChart} {state : State}
    {fuel : ℕ} {words : List ℕ}
    (hi : ImageSound tab T R) (hc : TermSound tab E T R)
    (hcheck : checkPacked tab R targets signs state fuel words = true) :
    CoveredState tab T R E targets signs state := by
  intro H hH t ht hz
  exact checkPacked_sound tab E targets hi hc signs state fuel words hcheck hH hz ht

theorem coveredState_split {n T R : ℕ} {tab : Tables} {E : CarrierRegion}
    {targets : Fin n → ZRayBox} {signs : SignChart} {state : State} (j : Fin 5)
    (hs : splitCheck tab (state j) = true)
    (hl : CoveredState tab T R E targets signs (leftState state j))
    (hr : CoveredState tab T R E targets signs (rightState state j)) :
    CoveredState tab T R E targets signs state := by
  intro H hH t ht hz
  rcases state_split_cover j hs ht with hleft | hright
  · exact hl H hH t hleft hz
  · exact hr H hH t hright hz

theorem all_chart_roots_sound {n T R : ℕ} {tab : Tables} {E : CarrierRegion}
    {targets : Fin n → ZRayBox} (_hT : 0 < T) (hR : 0 < R)
    (hroot : rootCheck tab T = true)
    (hcovered : ∀ signs, CoveredState tab T R E targets signs rootState) :
    CompleteUniformRayCover E (fun v => toRawRayBox R (targets v)) := by
  intro H _hphysical hH z hz
  rcases (raw_ray_chart_iff z).1 hz.1 with ⟨signs, t, ht, he⟩
  obtain ⟨v, hv⟩ := hcovered signs H hH t (rootCheck_sound hroot ht) (he ▸ hz)
  refine ⟨v, ?_⟩
  rw [he]
  exact (mem_toRawRayBox_iff hR _ _).2 hv

#print axioms coveredState_of_check
#print axioms coveredState_of_packed
#print axioms coveredState_split
#print axioms all_chart_roots_sound
#check CoveredState
end Mub6.Numerical.CircleCharts.Partition
