import CircleTaoSymmetryData

/-! Independent interface audit: the routed hypothesis reduces to exactly
the eight advertised physical root statements. No representative is supplied
or assumed proved in this review module. -/
namespace Mub6.Numerical.CircleTransportIndependentReview
open IntegerIntervals CircleCharts CircleCharts.Partition CirclePrototype.Tao
open CircleArc.TaoSoundness CircleFullPrototype CircleFullPrototype.TaoSymmetry
open CircleClosing GraphKernel

abbrev RootCovered (i : Fin 32) : Prop :=
  CoveredState taoTables (toCarrier R carrier) T R targets (signsOf i) rootState

theorem representatives_exact : ∀ i : Fin 32,
    chosenRepresentative i = 0 ∨ chosenRepresentative i = 1 ∨
    chosenRepresentative i = 3 ∨ chosenRepresentative i = 6 ∨
    chosenRepresentative i = 7 ∨ chosenRepresentative i = 11 ∨
    chosenRepresentative i = 15 ∨ chosenRepresentative i = 31 := by
  decide +kernel

theorem eight_roots_suffice
    (h0 : RootCovered 0) (h1 : RootCovered 1) (h3 : RootCovered 3)
    (h6 : RootCovered 6) (h7 : RootCovered 7) (h11 : RootCovered 11)
    (h15 : RootCovered 15) (h31 : RootCovered 31) :
    ∀ i : Fin 32, RootCovered i := by
  apply all_roots_from_routed
  intro i
  rcases representatives_exact i with h | h | h | h | h | h | h | h
  · simpa only [h] using h0
  · simpa only [h] using h1
  · simpa only [h] using h3
  · simpa only [h] using h6
  · simpa only [h] using h7
  · simpa only [h] using h11
  · simpa only [h] using h15
  · simpa only [h] using h31

theorem eight_roots_complete_uniformly
    (h0 : RootCovered 0) (h1 : RootCovered 1) (h3 : RootCovered 3)
    (h6 : RootCovered 6) (h7 : RootCovered 7) (h11 : RootCovered 11)
    (h15 : RootCovered 15) (h31 : RootCovered 31) :
    CompleteUniformRayCover (toCarrier R carrier) (fun v => toRawRayBox R (targets v)) :=
  complete_from_32 (eight_roots_suffice h0 h1 h3 h6 h7 h11 h15 h31)

theorem eight_roots_exclude_physical_raw_pair
    (h0 : RootCovered 0) (h1 : RootCovered 1) (h3 : RootCovered 3)
    (h6 : RootCovered 6) (h7 : RootCovered 7) (h11 : RootCovered 11)
    (h15 : RootCovered 15) (h31 : RootCovered 31)
    {H : BasisMatrix} (hH : PhaseHadamard H)
    (hE : CarrierBox (toCarrier R carrier) H) :
    ¬ ∃ z w : Fin 5 → Vector, IsRawFivePair H z w :=
  raw_pair_excluded_from_32 (eight_roots_suffice h0 h1 h3 h6 h7 h11 h15 h31) hH hE

#print axioms representatives_exact
#print axioms eight_roots_suffice
#print axioms eight_roots_complete_uniformly
#print axioms eight_roots_exclude_physical_raw_pair
#print axioms carrier_amplitude_permute
#print axioms state_mem_permute
#print axioms signs_recovered
end Mub6.Numerical.CircleTransportIndependentReview
