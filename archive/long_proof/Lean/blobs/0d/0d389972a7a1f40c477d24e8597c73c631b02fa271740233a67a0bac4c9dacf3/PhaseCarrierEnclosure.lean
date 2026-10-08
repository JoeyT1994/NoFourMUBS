import PhaseSideIntervals
import RadicalCarrierEnclosure

namespace Mub6.PhaseCube
open Matrix Mub6.Numerical Mub6.Numerical.IntervalKernel
open Mub6.Classification.CarrierIntervals Mub6.Classification.CompactCover
open Mub6.Classification.GoodMinor Mub6.Classification.FourPhase
open Mub6.Classification.RadicalIntervals
open Hadamard6Extensions.FourPhaseRoots Hadamard6Extensions.FourPhaseGram
open Hadamard6Extensions.FourierSide
noncomputable section

structure GateSideRecipe where
  moments : SideMomentBoxes
  deltaRe : ℚ
  deltaIm : ℚ
  deltaRadius : ℚ
  radial : Bool → Interval
  phase : Bool → RootRecipe

def GateSideRecipe.Valid (r : GateSideRecipe) : Prop :=
  PhaseSideCertificate r.moments r.deltaRe r.deltaIm r.deltaRadius r.radial r.phase

def GateSideRecipe.box (r : GateSideRecipe) (neg : Bool) : Rect3 :=
  phaseSideBox r.moments neg r.deltaRe r.deltaIm r.deltaRadius r.radial r.phase

structure PhaseCarrierInput (H : Mat6) where
  seedBox : Rect3
  horizontal : GateSideRecipe
  vertical : GateSideRecipe
  seed_mem : MemMatrix seedBox (northwest H)
  horizontal_mem : CoversSideMoments horizontal.moments (northeast H 1) (northeast H 2)
    Hadamard6Extensions.FourPhaseRoots.omega
  vertical_mem : CoversSideMoments vertical.moments ((southwest H)ᵀ 1) ((southwest H)ᵀ 2)
    Hadamard6Extensions.FourPhaseRoots.omega
  horizontal_valid : horizontal.Valid
  vertical_valid : vertical.Valid

def PhaseCarrierInput.box {H : Mat6} (I : PhaseCarrierInput H)
    (negativeB negativeC : Bool) : CarrierRegion :=
  reconstructedCarrierBox I.seedBox (I.horizontal.box negativeB) (I.vertical.box negativeC)ᵀ

theorem normalized_phase_carrier_enclosure {H : Mat6} (hH : NormalizedGoodSideCarrier H)
    (I : PhaseCarrierInput H) :
    ∃ negativeB negativeC : Bool, ∃ p q : Equiv.Perm (Fin 3),
      CarrierBox (I.box negativeB negativeC) (trailingReindex p q H) ∧
      NormalizedGoodSideCarrier (trailingReindex p q H) ∧
      (∀ z, IsRawCommonRay H z →
        IsRawCommonRay (trailingReindex p q H) (permuteRay (trailingPerm q) z)) ∧
      (∀ z w, rawOverlap (permuteRay (trailingPerm q) z) (permuteRay (trailingPerm q) w)=
        rawOverlap z w) := by
  have hB : Hadamard6Extensions.FourierSide.actualSide (northeast H 1) (northeast H 2)=
      northeast H := by
    rw [← scalar_side_eq]
    exact horizontal_actualSide hH
  have hC : Hadamard6Extensions.FourierSide.actualSide ((southwest H)ᵀ 1) ((southwest H)ᵀ 2)=
      (southwest H)ᵀ := by
    rw [← scalar_side_eq]
    exact vertical_actualSide hH
  obtain ⟨negativeB,p,hb⟩ := physical_side_phase_enclosure (northeast H 1) (northeast H 2)
    Hadamard6Extensions.FourPhaseRoots.omega omega_quadratic
    (horizontal_phase hH 1) (horizontal_phase hH 2)
    (by rw [hB]; exact horizontal_det_guard hH) I.horizontal.moments I.horizontal_mem
    I.horizontal.deltaRe I.horizontal.deltaIm I.horizontal.deltaRadius
    I.horizontal.radial I.horizontal.phase I.horizontal_valid
  obtain ⟨negativeC,q,hc⟩ := physical_side_phase_enclosure ((southwest H)ᵀ 1) ((southwest H)ᵀ 2)
    Hadamard6Extensions.FourPhaseRoots.omega omega_quadratic
    (vertical_phase hH 1) (vertical_phase hH 2)
    (by rw [hC]; exact vertical_det_guard hH) I.vertical.moments I.vertical_mem
    I.vertical.deltaRe I.vertical.deltaIm I.vertical.deltaRadius
    I.vertical.radial I.vertical.phase I.vertical_valid
  rw [hB] at hb
  rw [hC] at hc
  refine ⟨negativeB,negativeC,p,q,?_,trailingReindex_normalized p q hH,
    fun z hz => trailingReindex_commonRay p q hz,trailingRay_rawOverlap q⟩
  exact normalized_permuted_block_enclosure hH p q I.seed_mem hb (fun i j => hc j i)

/- Complete physical starting-point selection with a conditional certificate
   consumer. It does not construct the global seed/moment/square-root ledger. -/
theorem phaseHadamard_phase_enclosure_contract {H : Mat6} (hH : PhaseHadamard H) :
    ∃ k : Fin 20, let K := normalizedSideCarrier H k
      NormalizedGoodSideCarrier K ∧
      ∀ I : PhaseCarrierInput K,
        ∃ negativeB negativeC : Bool, ∃ p q : Equiv.Perm (Fin 3),
          CarrierBox (I.box negativeB negativeC) (trailingReindex p q K) ∧
          (∀ z, IsRawCommonRay H z → IsRawCommonRay (trailingReindex p q K)
            (permuteRay (trailingPerm q) (normalizedSideRay H k z))) ∧
          (∀ z w, rawOverlap
              (permuteRay (trailingPerm q) (normalizedSideRay H k z))
              (permuteRay (trailingPerm q) (normalizedSideRay H k w))=rawOverlap z w) := by
  obtain ⟨k,hk⟩ := phaseHadamard_normalized_good_side_cover hH
  refine ⟨k,hk,?_⟩
  intro I
  obtain ⟨negativeB,negativeC,p,q,hbox,_hphys,hray,hoverlap⟩ :=
    normalized_phase_carrier_enclosure hk I
  refine ⟨negativeB,negativeC,p,q,hbox,?_,?_⟩
  · intro z hz
    exact hray _ (normalizedSideRay_commonRay hH k hz)
  · intro z w
    rw [hoverlap]
    exact normalizedSideRay_rawOverlap hH k z w

#print axioms normalized_phase_carrier_enclosure
#print axioms phaseHadamard_phase_enclosure_contract
end
end Mub6.PhaseCube
