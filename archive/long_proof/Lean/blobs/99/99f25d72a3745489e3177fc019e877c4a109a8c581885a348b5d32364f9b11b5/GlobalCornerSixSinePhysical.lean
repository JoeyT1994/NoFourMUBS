import GlobalCornerSixSine
import GlobalCornerSideBounds

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 1000000
namespace Mub6.Classification.GlobalCornerDomain
open Mub6 Mub6.Numerical Matrix
open Mub6.Classification
open CompactCover GoodMinor FourierSeedBinding FourPhase FourPhaseWorker CanonicalCorners
noncomputable section

/-- Literal side-entry binding of the six-sine identity. The first row does
not enter this scalar identity; physical use comes through the side-score cap. -/
theorem physicalSideScore_sixSine {A : CompactCover.Mat3} (x y : Fin 3 → ℝ)
    (hx : ∀ j, A 1 j = GlobalCornerSixSine.phase (x j))
    (hy : ∀ j, A 2 j = GlobalCornerSixSine.phase (y j)) :
    physicalSideScore A = 64 * (GlobalCornerSixSine.sixSine x y)^2 := by
  have hc := congrArg Complex.re (gram_radicand_complex (sideS A) (sideT A) (sideR A))
  simp only [Complex.ofReal_re] at hc
  change physicalSideScore A = _ at hc
  rw [hc]
  simpa only [sideS,sideT,sideR,FourierPhysicalSide.s,FourierPhysicalSide.t,
    FourierPhysicalSide.r,hx,hy,ShoulderPhaseGate20261002.overlap] using
    GlobalCornerSixSine.radicand_sixSine x y

/-- The exported six-sine expression cannot exceed a globally maximal score
when its six phases are the literal complementary side of a positional corner. -/
theorem globalMax_complementary_sixSine {H : Mat6} (hH : GlobalMax H)
    (vertical : Bool) (p q : Perm) (x y : Fin 3 → ℝ)
    (hx : ∀ j, northeast (oriented vertical (candidate H p q)) 1 j =
      GlobalCornerSixSine.phase (x j))
    (hy : ∀ j, northeast (oriented vertical (candidate H p q)) 2 j =
      GlobalCornerSixSine.phase (y j)) :
    64 * (GlobalCornerSixSine.sixSine x y)^2 ≤ score H := by
  rw [← physicalSideScore_sixSine x y hx hy]
  exact globalMax_complementary_sideScore hH vertical p q

/-- Equivalent exponential convention for angle certificates, with all angle
quantities measured in radians. -/
theorem globalMax_complementary_sixSine_exp {H : Mat6} (hH : GlobalMax H)
    (vertical : Bool) (p q : Perm) (x y : Fin 3 → ℝ)
    (hx : ∀ j, northeast (oriented vertical (candidate H p q)) 1 j =
      Complex.exp ((x j : ℂ) * Complex.I))
    (hy : ∀ j, northeast (oriented vertical (candidate H p q)) 2 j =
      Complex.exp ((y j : ℂ) * Complex.I)) :
    64 * (GlobalCornerSixSine.sixSine x y)^2 ≤ score H := by
  apply globalMax_complementary_sixSine hH vertical p q x y
  · intro j
    rw [GlobalCornerSixSine.phase_exp]
    exact hx j
  · intro j
    rw [GlobalCornerSixSine.phase_exp]
    exact hy j

end
#print axioms physicalSideScore_sixSine
#print axioms globalMax_complementary_sixSine
#print axioms globalMax_complementary_sixSine_exp
end Mub6.Classification.GlobalCornerDomain
