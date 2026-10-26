import KernelAtlas.WholeBall.SideCentreCheck
import NoFourMUBs.SeedAtlas.Method.WholeBallCentre
import NoFourMUBs.SeedAtlas.Method.WholeBallBounds

/-! Z (14): centre matrix norms bound the actual side-signature variation
on the entire quadratic-predictor tube. -/

open Matrix Complex Hadamard6 NoFourMUBs NoFourMUBs.Step2
open NoFourMUBs.SeedAtlas NoFourMUBs.SeedAtlas.Method.WholeBall
set_option backward.isDefEq.respectTransparency false

namespace NoFourMUBs.KernelAtlas.WholeBall

lemma norm_quadratic_increment_le {m : ℕ}
    (U : Matrix (Fin m) (Fin 4) ℝ) (H : Matrix (Fin m) (Fin 16) ℝ)
    (X : Matrix (Fin m) (Fin 21) ℝ) {u h x r tau : ℝ}
    (hu : ‖eucMap U‖ ≤ u) (hh : ‖eucMap H‖ ≤ h) (hx : ‖eucMap X‖ ≤ x)
    {w : EuclideanSpace ℝ (Fin 4)} {z : EuclideanSpace ℝ (Fin 21)}
    (hw : ‖w‖ ≤ r) (hz : ‖z‖ ≤ tau) :
    ‖eucMap U w + (1/2 : ℝ) • eucMap H (tensorPair w w) + eucMap X z‖ ≤
      u * r + h * r ^ 2 / 2 + x * tau := by
  have hu0 := (norm_nonneg _).trans hu
  have hh0 := (norm_nonneg _).trans hh
  have hx0 := (norm_nonneg _).trans hx
  have hr0 := (norm_nonneg _).trans hw
  have hU := ((eucMap U).le_opNorm w).trans (mul_le_mul hu hw (norm_nonneg _) hu0)
  have hX := ((eucMap X).le_opNorm z).trans (mul_le_mul hx hz (norm_nonneg _) hx0)
  have hH : ‖eucMap H (tensorPair w w)‖ ≤ h * r ^ 2 := by
    apply ((eucMap H).le_opNorm _).trans
    rw [norm_tensorPair w w, ← pow_two]
    gcongr
  calc
    _ ≤ ‖eucMap U w‖ + ‖(1/2 : ℝ) • eucMap H (tensorPair w w)‖ + ‖eucMap X z‖ :=
      (norm_add_le _ _).trans (add_le_add (norm_add_le _ _) le_rfl)
    _ ≤ u * r + h * r ^ 2 / 2 + x * tau := by
      rw [norm_smul]
      norm_num only [Real.norm_eq_abs, abs_of_pos (by norm_num : (0 : ℝ) < 1/2)]
      linarith

lemma side_increment_vector (vertical : Bool) (U : PhaseSeed)
    (H₂ : Matrix (Fin 36) (Fin 16) ℝ) (X : NormalBasis)
    (w : EuclideanSpace ℝ (Fin 4)) (z : EuclideanSpace ℝ (Fin 21)) :
    WithLp.toLp 2 (sideHorizontal (sidePhase vertical (predictorIncrement U H₂ X w z))) =
      eucMap (realMatrix (sideProjection vertical) * U) w +
        (1/2 : ℝ) • eucMap (realMatrix (sideProjection vertical) * H₂) (tensorPair w w) +
        eucMap (realMatrix (sideProjection vertical) * X) z := by
  apply WithLp.ofLp_injective
  rw [← sideProjection_apply]
  simp only [predictorIncrement, flatPhase_add, flatPhase_smul, flatPhase_phaseMap,
    Matrix.mulVec_add, Matrix.mulVec_smul, Matrix.mulVec_mulVec]
  rfl

structure SideFiniteBounds (vertical : Bool) (Q : RMat6) (U : PhaseSeed)
    (H₂ : Matrix (Fin 36) (Fin 16) ℝ) (X : NormalBasis) (S : SideBounds ℝ) : Prop where
  AU : ‖eucMap (realMatrix (sideProjection vertical) * U)‖ ≤ S.AU
  AH2 : ‖eucMap (realMatrix (sideProjection vertical) * H₂)‖ ≤ S.AH2
  AX : ‖eucMap (realMatrix (sideProjection vertical) * X)‖ ≤ S.AX
  gU : ‖eucMap ((show Matrix (Fin 1) (Fin 9) ℝ from fun _ j => signatureGradient (sidePhase vertical Q) j) *
    realMatrix (sideProjection vertical) * U)‖ ≤ S.gU
  gH2 : ‖eucMap ((show Matrix (Fin 1) (Fin 9) ℝ from fun _ j => signatureGradient (sidePhase vertical Q) j) *
    realMatrix (sideProjection vertical) * H₂)‖ ≤ S.gH2
  gX : ‖eucMap ((show Matrix (Fin 1) (Fin 9) ℝ from fun _ j => signatureGradient (sidePhase vertical Q) j) *
    realMatrix (sideProjection vertical) * X)‖ ≤ S.gX

theorem SideFiniteBounds.variation {vertical : Bool} {Q : RMat6} {U : PhaseSeed}
    {H₂ : Matrix (Fin 36) (Fin 16) ℝ} {X : NormalBasis} {S : SideBounds ℝ}
    (h : SideFiniteBounds vertical Q U H₂ X S) (B : Bounds ℝ)
    {w : EuclideanSpace ℝ (Fin 4)} {z : EuclideanSpace ℝ (Fin 21)}
    (hw : ‖w‖ ≤ B.r) (hz : ‖z‖ ≤ B.tau) :
    |(psi (signaturePhaseBlock (sidePhase vertical (Q + predictorIncrement U H₂ X w z)))).im -
      (psi (signaturePhaseBlock (sidePhase vertical Q))).im| ≤ S.variation B := by
  let v := sidePhase vertical (predictorIncrement U H₂ X w z)
  let A := realMatrix (sideProjection vertical)
  let g : Matrix (Fin 1) (Fin 9) ℝ := fun _ j => signatureGradient (sidePhase vertical Q) j
  have hv : ‖(WithLp.toLp 2 (sideHorizontal v) : EuclideanSpace ℝ (Fin 9))‖ ≤ S.eps B := by
    rw [show v = sidePhase vertical (predictorIncrement U H₂ X w z) from rfl, side_increment_vector]
    exact norm_quadratic_increment_le _ _ _ h.AU h.AH2 h.AX hw hz
  have hg : |∑ j, signatureGradient (sidePhase vertical Q) j * sideHorizontal v j| ≤
      S.gU * B.r + S.gH2 * B.r ^ 2 / 2 + S.gX * B.tau := by
    have hnorm := norm_quadratic_increment_le _ _ _ h.gU h.gH2 h.gX hw hz
    have he : eucMap g (WithLp.toLp 2 (sideHorizontal v)) =
        eucMap (g * A * U) w + (1/2 : ℝ) • eucMap (g * A * H₂) (tensorPair w w) +
          eucMap (g * A * X) z := by
      rw [show v = sidePhase vertical (predictorIncrement U H₂ X w z) from rfl, side_increment_vector]
      simp only [map_add, map_smul]
      ext a
      change ((g *ᵥ ((A * U) *ᵥ w)) a + (1/2 : ℝ) * (g *ᵥ ((A * H₂) *ᵥ tensorPair w w)) a +
        (g *ᵥ ((A * X) *ᵥ z)) a) = _
      simp only [Matrix.mulVec_mulVec, ← Matrix.mul_assoc]
      rfl
    have hcoord := PiLp.norm_apply_le (eucMap g (WithLp.toLp 2 (sideHorizontal v))) 0
    rw [← he] at hnorm
    simpa [eucMap, g, Matrix.mulVec, dotProduct] using hcoord.trans hnorm
  have hvar := signature_variation_projected (sidePhase vertical Q) v
  have he : sidePhase vertical (Q + predictorIncrement U H₂ X w z) = sidePhase vertical Q + v := rfl
  rw [he]
  apply hvar.trans
  have heps0 := (norm_nonneg _).trans hv
  have hs : (∑ j, sideHorizontal v j ^ 2) ≤ (S.eps B) ^ 2 := by
    rw [← EuclideanSpace.real_norm_sq_eq (WithLp.toLp 2 (sideHorizontal v))]
    exact pow_le_pow_left₀ (norm_nonneg _) hv 2
  unfold SideBounds.variation
  linarith

end NoFourMUBs.KernelAtlas.WholeBall
