import LocalPhysicalSideEnclosure
import SixteenCarrierEnclosure
import CarrierPermutationReduction
import PhysicalSeedSides
import ExplicitComplexRoots

/-! Local certified side boxes assemble into an enclosure of an actual carrier
with one common ray transport preserving every complex overlap. Certificate
existence over a finite global parameter cover is a separate obligation. -/
namespace Mub6.Classification.RadicalIntervals
open Matrix Mub6.Numerical Mub6.Numerical.IntervalKernel
open Mub6.Classification.CarrierIntervals Mub6.Classification.CompactCover
open Mub6.Classification.GoodMinor Mub6.Classification.FourPhase
open Hadamard6Extensions.FourPhaseRoots Hadamard6Extensions.FourPhaseGram
open Hadamard6Extensions.FourierSide
noncomputable section

def reconstructedCarrierBox (E B C : Rect3) : CarrierRegion :=
  blockBoxes E B C (lowerBlockBox E B C)

theorem reconstructedCarrierBox_sound {E B C : Rect3} {X Y Z : Mat3}
    (hx : MemMatrix E X) (hy : MemMatrix B Y) (hz : MemMatrix C Z)
    (hg : (54/5 : ℝ) ≤ (gram X).det.re) (hi : (gram X).det.im=0) :
    CarrierBox (reconstructedCarrierBox E B C) (reconstructedCarrier X Y Z) :=
  mem_blockBoxes hx hy hz (lowerBlockBox_sound hx hy hz hg hi)

theorem normalized_permuted_block_enclosure {H : Mat6} (hH : NormalizedGoodSideCarrier H)
    (p q : Equiv.Perm (Fin 3)) {E B C : Rect3}
    (he : MemMatrix E (northwest H))
    (hb : MemMatrix B (fun i j => northeast H i (p j)))
    (hc : MemMatrix C (fun i j => southwest H (q i) j)) :
    CarrierBox (reconstructedCarrierBox E B C) (trailingReindex p q H) := by
  have hg := (normalized_good_side_guards hH).2.2
  change (54/5 : ℝ) ≤ (gram (northwest H)).det.re ∧
    (gram (northwest H)).det.im=0 at hg
  have hm := reconstructedCarrierBox_sound he hb hc hg.1 hg.2
  rw [reconstructedCarrier_permutations] at hm
  simpa only [← normalized_reconstructedCarrier hH, trailingReindex] using hm

structure SideBoxRecipe where
  moments : SideMomentBoxes
  deltaRe : ℚ
  deltaIm : ℚ
  deltaRadius : ℚ
  tauRe : Bool → ℚ
  tauIm : Bool → ℚ
  tauRadius : Bool → ℚ

def SideBoxRecipe.Valid (R : SideBoxRecipe) : Prop :=
  LocalSideCertificate R.moments R.deltaRe R.deltaIm R.deltaRadius R.tauRe R.tauIm R.tauRadius
def SideBoxRecipe.box (R : SideBoxRecipe) (negative : Bool) : Rect3 :=
  localSideBox R.moments negative R.deltaRe R.deltaIm R.deltaRadius R.tauRe R.tauIm R.tauRadius

structure CertifiedCarrierInput (H : Mat6) where
  seedBox : Rect3
  horizontal : SideBoxRecipe
  vertical : SideBoxRecipe
  seed_mem : MemMatrix seedBox (northwest H)
  horizontal_mem : CoversSideMoments horizontal.moments (northeast H 1) (northeast H 2) omega
  vertical_mem : CoversSideMoments vertical.moments ((southwest H)ᵀ 1) ((southwest H)ᵀ 2) omega
  horizontal_valid : horizontal.Valid
  vertical_valid : vertical.Valid

def CertifiedCarrierInput.box {H : Mat6} (I : CertifiedCarrierInput H)
    (negativeB negativeC : Bool) : CarrierRegion :=
  reconstructedCarrierBox I.seedBox (I.horizontal.box negativeB) (I.vertical.box negativeC)ᵀ

theorem normalized_local_carrier_enclosure {H : Mat6} (hH : NormalizedGoodSideCarrier H)
    (I : CertifiedCarrierInput H) :
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
  obtain ⟨negativeB,p,hb⟩ := physical_side_local_enclosure (northeast H 1) (northeast H 2)
    omega omega_quadratic (horizontal_phase hH 1) (horizontal_phase hH 2)
    (by rw [hB]; exact horizontal_det_guard hH) I.horizontal.moments I.horizontal_mem
    I.horizontal.deltaRe I.horizontal.deltaIm I.horizontal.deltaRadius
    I.horizontal.tauRe I.horizontal.tauIm I.horizontal.tauRadius I.horizontal_valid
  obtain ⟨negativeC,q,hc⟩ := physical_side_local_enclosure ((southwest H)ᵀ 1) ((southwest H)ᵀ 2)
    omega omega_quadratic (vertical_phase hH 1) (vertical_phase hH 2)
    (by rw [hC]; exact vertical_det_guard hH) I.vertical.moments I.vertical_mem
    I.vertical.deltaRe I.vertical.deltaIm I.vertical.deltaRadius
    I.vertical.tauRe I.vertical.tauIm I.vertical.tauRadius I.vertical_valid
  rw [hB] at hb
  rw [hC] at hc
  refine ⟨negativeB,negativeC,p,q,?_,trailingReindex_normalized p q hH,
    fun z hz => trailingReindex_commonRay p q hz,trailingRay_rawOverlap q⟩
  exact normalized_permuted_block_enclosure hH p q I.seed_mem hb (fun i j => hc j i)

/-- A global physical starting point with a local certificate consumer. The
universal quantifier over `CertifiedCarrierInput` is conditional: this theorem
does not construct the numerical project's finite input-certificate ledger. -/
theorem phaseHadamard_local_carrier_contract {H : Mat6} (hH : PhaseHadamard H) :
    ∃ k : Fin 20, let K := normalizedSideCarrier H k
      NormalizedGoodSideCarrier K ∧
      ∀ I : CertifiedCarrierInput K,
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
    normalized_local_carrier_enclosure hk I
  refine ⟨negativeB,negativeC,p,q,hbox,?_,?_⟩
  · intro z hz
    exact hray _ (normalizedSideRay_commonRay hH k hz)
  · intro z w
    rw [hoverlap]
    exact normalizedSideRay_rawOverlap hH k z w

#check reconstructedCarrierBox_sound
#print axioms reconstructedCarrierBox_sound
#check normalized_permuted_block_enclosure
#print axioms normalized_permuted_block_enclosure
#check normalized_local_carrier_enclosure
#print axioms normalized_local_carrier_enclosure
#check phaseHadamard_local_carrier_contract
#print axioms phaseHadamard_local_carrier_contract
end
end Mub6.Classification.RadicalIntervals
