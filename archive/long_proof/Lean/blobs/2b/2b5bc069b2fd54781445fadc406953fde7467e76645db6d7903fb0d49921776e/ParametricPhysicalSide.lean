import PhaseCube
import Root0Program
import GlobalCornerSelectedColumns
import ParametricAngularLeaf

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace ShoulderPhysicalSide20261003
open Mub6 Mub6.Numerical Mub6.Classification Matrix
open CompactCover GoodMinor FourierSeedBinding CanonicalCorners GlobalCornerDomain
open SharedSeedIntervals SideColumns Mub6.Numerical.IntervalKernel
open ShoulderRadian20261003 ShoulderAngular20261003
noncomputable section

def InCube (c r : Fin 4 → ℚ) (H : Mat6) : Prop :=
  ∃ θ : Fin 4 → ℝ, ShoulderPhaseCube20261003.Cube c r θ ∧
    H 1 1=cis (θ 0) ∧ H 1 2=cis (θ 1) ∧ H 2 1=cis (θ 2) ∧ H 2 2=cis (θ 3)

def seedX (H : Mat6) (j : Fin 3) : ℂ := H (front j) 1
def seedY (H : Mat6) (j : Fin 3) : ℂ := H (front j) 2
def sideX (H : Mat6) (j : Fin 3) : ℂ := H (back j) 1
def sideY (H : Mat6) (j : Fin 3) : ℂ := H (back j) 2
def seedEX (E : Fin 4 → RationalRectangle) : Fin 3 → RationalRectangle :=
  ![boxPoint 1 0,E 0,E 2]
def seedEY (E : Fin 4 → RationalRectangle) : Fin 3 → RationalRectangle :=
  ![boxPoint 1 0,E 1,E 3]

theorem vertical_system {H : Mat6} (hH : NormalizedCarrier H) :
    System (rowS (H 1 1) (H 2 1)) (rowT (H 1 2) (H 2 2))
      (rowR (H 1 1) (H 2 1) (H 1 2) (H 2 2)) (sideX H) (sideY H) := by
  exact normalized_vertical_system hH

theorem globalMax_corner_caps_of_score_le (cap : ℚ) {H : Mat6}
    (hH : GlobalMax H) (hscore : score H≤(cap:ℝ)) :
    ∀ ℓ, CornerCaps cap (seedX H) (seedY H) (sideX H ℓ) (sideY H ℓ) := by
  intro ℓ
  apply rawCornerCaps_sound
    (fun j => hH.1.1.1 (front j) 1) (fun j => hH.1.1.1 (front j) 2)
    (hH.1.1.1 (back ℓ) 1) (hH.1.1.1 (back ℓ) 2)
  intro j k hjk
  have hh := (globalMax_seedPairBack_radicand hH true j k ℓ (ne_of_lt hjk)).trans hscore
  simpa [seedX,seedY,sideX,sideY,oriented] using hh

theorem normalized_seed_score {H : Mat6} (hH : NormalizedCarrier H)
    {θ : Fin 4 → ℝ} (h00 : H 1 1=cis (θ 0)) (h01 : H 1 2=cis (θ 1))
    (h10 : H 2 1=cis (θ 2)) (h11 : H 2 2=cis (θ 3)) :
    score H=(ShoulderPhaseGate20261002.radicand
      (ShoulderRoot0Program20261003.s θ) (ShoulderRoot0Program20261003.t θ)
      (ShoulderRoot0Program20261003.r θ)).re := by
  have h := congrArg Complex.re (seed_radicand_complex (H 1 1) (H 1 2) (H 2 1) (H 2 2)
    (hH.1.1 1 1) (hH.1.1 1 2) (hH.1.1 2 1) (hH.1.1 2 2))
  simp only [Complex.ofReal_re] at h
  simpa only [score,rowS,rowT,rowR,ShoulderRoot0Program20261003.s,
    ShoulderRoot0Program20261003.t,ShoulderRoot0Program20261003.r,h00,h01,h10,h11] using h

theorem normalized_seed_boxes {H : Mat6} (hH : NormalizedCarrier H)
    {E : Fin 4 → RationalRectangle} {θ : Fin 4 → ℝ}
    (h00 : H 1 1=cis (θ 0)) (h01 : H 1 2=cis (θ 1))
    (h10 : H 2 1=cis (θ 2)) (h11 : H 2 2=cis (θ 3))
    (he : ∀ k, MemRectangle (E k) (cis (θ k))) :
    (∀ j, MemRectangle (seedEX E j) (seedX H j)) ∧
    (∀ j, MemRectangle (seedEY E j) (seedY H j)) := by
  have hu : MemRectangle (boxPoint 1 0) (1:ℂ) := by
    norm_num [MemRectangle,boxPoint,rectangle,point]
  constructor
  · intro j
    fin_cases j
    · change MemRectangle (boxPoint 1 0) (H 0 1)
      rw [hH.2.1 1]
      exact hu
    · simpa [seedEX,seedX,front,h00] using he 0
    · simpa [seedEX,seedX,front,h10] using he 2
  · intro j
    fin_cases j
    · change MemRectangle (boxPoint 1 0) (H 0 2)
      rw [hH.2.1 2]
      exact hu
    · simpa [seedEY,seedY,front,h01] using he 1
    · simpa [seedEY,seedY,front,h11] using he 3

/-- Every per-cube quantitative obligation is explicit in this shared consumer.
Only an instantiated proof of all these premises gives a physical exclusion. -/
theorem cube_exclusion
    (c r : Fin 4 → ℚ) (cap : ℚ) (M : SidePolynomialBoxes)
    (E : Fin 4 → RationalRectangle) (L K : Label)
    (hL : anyCheck (pairChecks M L L)=true)
    (hK : anyCheck (pairChecks M K K)=true)
    (hcover : LeafStatement cap M (seedEX E) (seedEY E) L K ⟨0,1⟩ ⟨0,1⟩)
    (hcap : ∀ θ, ShoulderPhaseCube20261003.Cube c r θ →
      (ShoulderPhaseGate20261002.radicand (ShoulderRoot0Program20261003.s θ)
        (ShoulderRoot0Program20261003.t θ) (ShoulderRoot0Program20261003.r θ)).re≤(cap:ℝ))
    (hmoment : ∀ θ, ShoulderPhaseCube20261003.Cube c r θ →
      CoversSidePolynomials M (-(1+cis (θ 0)+cis (θ 2)))
        (-(1+cis (θ 1)+cis (θ 3)))
        (-(1+cis (θ 1)*star (cis (θ 0))+cis (θ 3)*star (cis (θ 2)))))
    (hphase : ∀ θ, ShoulderPhaseCube20261003.Cube c r θ →
      ∀ k, MemRectangle (E k) (cis (θ k)))
    {H : Mat6} (hH : GlobalMax H) (hroot : InCube c r H) : False := by
  obtain ⟨θ,hθ,h00,h01,h10,h11⟩ := hroot
  have hscore : score H≤(cap:ℝ) := by
    rw [normalized_seed_score hH.1 h00 h01 h10 h11]
    exact hcap θ hθ
  have hm : CoversSidePolynomials M (rowS (H 1 1) (H 2 1))
      (rowT (H 1 2) (H 2 2)) (rowR (H 1 1) (H 2 1) (H 1 2) (H 2 2)) := by
    simpa only [rowS,rowT,rowR,h00,h01,h10,h11] using hmoment θ hθ
  have he := normalized_seed_boxes hH.1 h00 h01 h10 h11 (hphase θ hθ)
  exact ShoulderAngular20261003.side_exclusion cap M (seedEX E) (seedEY E)
    L K hL hK hcover hm he.1 he.2 (vertical_system hH.1)
    (globalMax_corner_caps_of_score_le cap hH hscore)

#print axioms vertical_system
#print axioms globalMax_corner_caps_of_score_le
#print axioms normalized_seed_score
#print axioms normalized_seed_boxes
#print axioms cube_exclusion
end
end ShoulderPhysicalSide20261003
