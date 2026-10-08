import Root0PhysicalCap
import GlobalCornerSelectedColumns
import AngularLeaf

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace ShoulderRoot0Actual20261003
open Mub6 Mub6.Numerical Mub6.Classification Matrix
open CompactCover GoodMinor FourierSeedBinding CanonicalCorners GlobalCornerDomain SideColumns
open Root0Angular20261003
noncomputable section

/-- The three literal entries of each of the first two nontrivial columns
inside the leading block, in the exporter's vertical orientation. -/
def seedX (H : Mat6) (j : Fin 3) : ℂ := H (front j) 1
def seedY (H : Mat6) (j : Fin 3) : ℂ := H (front j) 2
/-- The three remaining entries in those same two columns. -/
def sideX (H : Mat6) (j : Fin 3) : ℂ := H (back j) 1
def sideY (H : Mat6) (j : Fin 3) : ℂ := H (back j) 2

theorem vertical_system {H : Mat6} (hH : NormalizedCarrier H) :
    System (rowS (H 1 1) (H 2 1)) (rowT (H 1 2) (H 2 2))
      (rowR (H 1 1) (H 2 1) (H 1 2) (H 2 2)) (sideX H) (sideY H) := by
  exact normalized_vertical_system hH

/-- All three ordered seed pairs and each of the three remaining rows use
full GlobalMax comparisons. There is no side-eligibility restriction. -/
theorem globalMax_corner_caps_of_score_le {H : Mat6} (hH : GlobalMax H)
    (hscore : score H ≤ 1/80) :
    ∀ ℓ, CornerCaps (seedX H) (seedY H) (sideX H ℓ) (sideY H ℓ) := by
  intro ℓ
  apply rawCornerCaps_sound
    (fun j => hH.1.1.1 (front j) 1) (fun j => hH.1.1.1 (front j) 2)
    (hH.1.1.1 (back ℓ) 1) (hH.1.1.1 (back ℓ) 2)
  intro j k hjk
  have hh := (globalMax_seedPairBack_radicand hH true j k ℓ (ne_of_lt hjk)).trans hscore
  simpa only [seedX,seedY,sideX,sideY,oriented,Matrix.transpose_apply] using hh

theorem globalMax_root0_corner_caps {H : Mat6} (hH : GlobalMax H)
    (hroot : InRoot0 H) :
    ∀ ℓ, CornerCaps (seedX H) (seedY H) (sideX H ℓ) (sideY H ℓ) :=
  globalMax_corner_caps_of_score_le hH (normalized_score_cap hH.1 hroot)

#print axioms vertical_system
#print axioms globalMax_corner_caps_of_score_le
#print axioms globalMax_root0_corner_caps
end
end ShoulderRoot0Actual20261003
