import Root0Cap
import GlobalCornerScalar

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace ShoulderRoot0Actual20261003
open Mub6 Mub6.Numerical Mub6.Classification
open CompactCover FourierSeedBinding CanonicalCorners GlobalCornerDomain
open ShoulderRadian20261003 ShoulderRoot0Centers20261003
noncomputable section

/-- The literal radian cube supplied by the retained root0 packet. -/
def InRoot0 (H : Mat6) : Prop := ∃ θ : Fin 4 → ℝ, Cube θ ∧
  H 1 1=cis (θ 0) ∧ H 1 2=cis (θ 1) ∧
  H 2 1=cis (θ 2) ∧ H 2 2=cis (θ 3)

theorem normalized_score_cap {H : Mat6} (hH : NormalizedCarrier H)
    (hroot : InRoot0 H) : score H≤1/80 := by
  obtain ⟨θ,hθ,h00,h01,h10,h11⟩ := hroot
  have h := congrArg Complex.re (seed_radicand_complex (H 1 1) (H 1 2) (H 2 1) (H 2 2)
    (hH.1.1 1 1) (hH.1.1 1 2) (hH.1.1 2 1) (hH.1.1 2 2))
  simp only [Complex.ofReal_re] at h
  have he : score H=(ShoulderPhaseGate20261002.radicand
      (ShoulderRoot0Program20261003.s θ) (ShoulderRoot0Program20261003.t θ)
      (ShoulderRoot0Program20261003.r θ)).re := by
    simpa only [score,rowS,rowT,rowR,ShoulderRoot0Program20261003.s,
      ShoulderRoot0Program20261003.t,ShoulderRoot0Program20261003.r,h00,h01,h10,h11] using h
  rw [he]
  exact ShoulderRoot0Cap20261003.cube_cap hθ


#print axioms normalized_score_cap
end
end ShoulderRoot0Actual20261003
