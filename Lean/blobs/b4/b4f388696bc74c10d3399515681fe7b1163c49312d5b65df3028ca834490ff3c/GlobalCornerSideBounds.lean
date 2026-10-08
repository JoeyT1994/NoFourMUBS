import GlobalCornerPhysical
import ComplementaryCorners

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 1000000
namespace Mub6.Classification.GlobalCornerDomain
open Mub6 Mub6.Numerical Matrix IntervalKernel
open Mub6.Classification
open CompactCover GoodMinor FourierSeedBinding FourPhase FourPhaseWorker CanonicalCorners
open CarrierIntervals SharedSeedIntervals SharedSeedSheetIntervals SideColumns
noncomputable section

/-- The actual horizontal side system needs normalization and physical Gram
relations, not quantitative good-minor eligibility. -/
theorem normalized_horizontal_system {H : Mat6} (hH : NormalizedCarrier H) :
    System (rowS (H 1 1) (H 1 2)) (rowT (H 2 1) (H 2 2))
      (rowR (H 1 1) (H 1 2) (H 2 1) (H 2 2)) (northeast H 1) (northeast H 2) := by
  have hm := normalized_horizontal_moments hH
  exact ⟨fun j => hH.1.1 (front 1) (back j),fun j => hH.1.1 (front 2) (back j),
    by simpa [sideS,FourierPhysicalSide.s,Fin.sum_univ_three] using hm.1,
    by simpa [sideT,FourierPhysicalSide.t,Fin.sum_univ_three] using hm.2.1,
    by simpa [sideR,FourierPhysicalSide.r,Fin.sum_univ_three] using hm.2.2⟩

theorem normalized_vertical_system {H : Mat6} (hH : NormalizedCarrier H) :
    System (rowS (H 1 1) (H 2 1)) (rowT (H 1 2) (H 2 2))
      (rowR (H 1 1) (H 2 1) (H 1 2) (H 2 2)) ((southwest H)ᵀ 1) ((southwest H)ᵀ 2) :=
  normalized_horizontal_system (normalized_transpose hH)

theorem normalized_sideBoxes_sound {H : Mat6} {E : CarrierRegion}
    (hH : NormalizedCarrier H) (hb : CarrierBox E H) :
    CoversSidePolynomials (sideBoxes E) (rowS (H 1 1) (H 1 2))
      (rowT (H 2 1) (H 2 2)) (rowR (H 1 1) (H 1 2) (H 2 1) (H 2 2)) := by
  have hs := normalized_horizontal_system hH
  refine ⟨?_,?_,?_⟩
  · rw [← hs.2.2.1]; exact mem_boxSum _ _ (fun j => hb 1 (back j))
  · rw [← hs.2.2.2.1]; exact mem_boxSum _ _ (fun j => hb 2 (back j))
  · rw [← hs.2.2.2.2]
    exact mem_boxSum _ _ (fun j => mem_boxMul (hb 2 (back j)) (mem_boxConj (hb 1 (back j))))

theorem normalized_side_score_bound {H : Mat6} {E : CarrierRegion}
    (hH : NormalizedCarrier H) (hb : CarrierBox E H) :
    Mem (radicandBox (sideBoxes E)) (score H) := by
  have h := radicandBox_sound (normalized_sideBoxes_sound hH hb)
  simpa only [score,radicand,
    g_gram_binding _ _ _ _ (hH.1.1 1 1) (hH.1.1 1 2) (hH.1.1 2 1) (hH.1.1 2 2),
    eta_gram_binding _ _ _ _ (hH.1.1 1 1) (hH.1.1 1 2) (hH.1.1 2 1) (hH.1.1 2 2),
    chi_gram_binding _ _ _ _ (hH.1.1 1 1) (hH.1.1 1 2) (hH.1.1 2 1) (hH.1.1 2 2)] using h

/-- The division-free real Gram polynomial on a literal phase side. -/
def physicalSideScore (A : CompactCover.Mat3) : ℝ :=
  FourierRadicalGuards.radicand (FourierGramNumerators.g (sideS A) (sideT A) (sideR A))
    (FourierGramNumerators.chi (sideS A) (sideT A) (sideR A))
    (FourierGramNumerators.eta (sideS A) (sideT A) (sideR A))

theorem normalized_score_sideScore {H : Mat6} (hH : NormalizedCarrier H) :
    score H = physicalSideScore (northeast H) := by
  obtain ⟨hs,ht,hr⟩ := normalized_horizontal_moments hH
  unfold physicalSideScore score FourierSeedBinding.radicand
  rw [hs,ht,hr,
    g_gram_binding _ _ _ _ (hH.1.1 1 1) (hH.1.1 1 2) (hH.1.1 2 1) (hH.1.1 2 2),
    eta_gram_binding _ _ _ _ (hH.1.1 1 1) (hH.1.1 1 2) (hH.1.1 2 1) (hH.1.1 2 2),
    chi_gram_binding _ _ _ _ (hH.1.1 1 1) (hH.1.1 1 2) (hH.1.1 2 1) (hH.1.1 2 2)]

theorem normalized_oriented (vertical : Bool) {H : Mat6} (hH : NormalizedCarrier H) :
    NormalizedCarrier (oriented vertical H) := by
  cases vertical
  · exact hH
  · exact normalized_transpose hH

/-- The all-max comparison applies to the complementary-side score of any
actual candidate, in either orientation, with no determinant guard. -/
theorem globalMax_complementary_sideScore {H : Mat6} (hH : GlobalMax H)
    (vertical : Bool) (p q : Perm) :
    physicalSideScore (northeast (oriented vertical (candidate H p q))) ≤ score H := by
  rw [← normalized_score_sideScore (normalized_oriented vertical
    (candidate_normalized hH.1.1 p q)),oriented_score vertical
    (candidate_normalized hH.1.1 p q).1]
  exact hH.2 p q

/-- A checked lower bound obtained from any known complementary side is capped
by the selected global score. Physical containment stays explicit. -/
theorem globalMax_complementary_lower_bound {H : Mat6} (hH : GlobalMax H)
    (vertical : Bool) (p q : Perm) {E : CarrierRegion}
    (hb : CarrierBox E (oriented vertical (candidate H p q))) :
    ((radicandBox (sideBoxes E)).lo : ℝ) ≤ score H := by
  have hs := normalized_side_score_bound
    (normalized_oriented vertical (candidate_normalized hH.1.1 p q)) hb
  rw [oriented_score vertical (candidate_normalized hH.1.1 p q).1] at hs
  exact hs.1.trans (hH.2 p q)

end
end Mub6.Classification.GlobalCornerDomain

#print axioms Mub6.Classification.GlobalCornerDomain.normalized_horizontal_system
#print axioms Mub6.Classification.GlobalCornerDomain.normalized_vertical_system
#print axioms Mub6.Classification.GlobalCornerDomain.normalized_sideBoxes_sound
#print axioms Mub6.Classification.GlobalCornerDomain.normalized_side_score_bound
#print axioms Mub6.Classification.GlobalCornerDomain.normalized_score_sideScore
#print axioms Mub6.Classification.GlobalCornerDomain.normalized_oriented
#print axioms Mub6.Classification.GlobalCornerDomain.globalMax_complementary_sideScore
#print axioms Mub6.Classification.GlobalCornerDomain.globalMax_complementary_lower_bound
