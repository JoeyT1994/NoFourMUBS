import KernelAtlas.WholeBall.CertifiedCentre
import KernelAtlas.WholeBall.CentreEquation
import KernelAtlas.WholeBall.BasisGeometry
import KernelAtlas.WholeBall.SeedGeometry

/-! The certified matched centre supplies the actual local full-residual germ.
The finite contraction bounds then continue this germ over the closed ball. -/

open Matrix Hadamard6 NoFourMUBs NoFourMUBs.SeedAtlas
open NoFourMUBs.SeedAtlas.Method.WholeBall NoFourMUBs.KernelAtlas.Seed
open Filter Topology Metric Set
open scoped Matrix.Norms.Elementwise ContDiff
set_option backward.isDefEq.respectTransparency false
set_option maxHeartbeats 0

namespace NoFourMUBs.KernelAtlas.WholeBall

lemma horizontal_add {Q R : RMat6} (hQ : IsHorizontal Q) (hR : IsHorizontal R) :
    IsHorizontal (Q + R) := by
  constructor <;> intro i <;> simp [IsHorizontal, Finset.sum_add_distrib, hQ.1, hQ.2, hR.1, hR.2]

lemma horizontal_sub {Q R : RMat6} (hQ : IsHorizontal Q) (hR : IsHorizontal R) :
    IsHorizontal (Q - R) := by
  constructor <;> intro i <;> simp [IsHorizontal, Finset.sum_sub_distrib, hQ.1, hQ.2, hR.1, hR.2]

lemma horizontal_smul {Q : RMat6} (hQ : IsHorizontal Q) (c : ℝ) : IsHorizontal (c • Q) := by
  constructor <;> intro i <;> simp [IsHorizontal, ← Finset.mul_sum, hQ.1, hQ.2]

lemma predictorIncrement_seed (U : PhaseSeed) (H₂ : Matrix (Fin 36) (Fin 16) ℝ)
    (X : NormalBasis) (M : Matrix (Fin 4) (Fin 4) ℝ)
    (hU : realMatrix seedMatrix * U = M) (hH : realMatrix seedMatrix * H₂ = 0)
    (hX : realMatrix seedMatrix * X = 0)
    (w : EuclideanSpace ℝ (Fin 4)) (z : EuclideanSpace ℝ (Fin 21)) :
    cornerTheta (predictorIncrement U H₂ X w z) 1 1 = M *ᵥ w := by
  have hs (c : ℝ) (Q : RMat6) : cornerTheta (c • Q) 1 1 = c • cornerTheta Q 1 1 := by
    ext k; fin_cases k <;> simp [cornerTheta, cornerD] <;> ring
  simp only [predictorIncrement, seedPhase_add, hs, seed_phaseMap, hU, hH, hX,
    Matrix.zero_mulVec, smul_zero, add_zero]

lemma predictorIncrement_horizontal (U : PhaseSeed) (H₂ : Matrix (Fin 36) (Fin 16) ℝ)
    (X : NormalBasis) (hU : realMatrix horizontalMatrix * U = U)
    (hH : realMatrix horizontalMatrix * H₂ = H₂) (hX : realMatrix horizontalMatrix * X = X)
    (w : EuclideanSpace ℝ (Fin 4)) (z : EuclideanSpace ℝ (Fin 21)) :
    IsHorizontal (predictorIncrement U H₂ X w z) :=
  horizontal_add (horizontal_add (horizontal_phaseMap U hU w)
    (horizontal_smul (horizontal_phaseMap H₂ hH _) _)) (horizontal_phaseMap X hX z)

theorem CertifiedCentre.normal_germ {B : BallD} {D : BoxD} {o : ℤˣ}
    (C : CertifiedCentre B D o) (U : PhaseSeed) (H₂ : Matrix (Fin 36) (Fin 16) ℝ)
    (M : Matrix (Fin 4) (Fin 4) ℝ)
    (hU : realMatrix horizontalMatrix * U = U) (hH : realMatrix horizontalMatrix * H₂ = H₂)
    (hLU : realMatrix seedMatrix * U = M) (hLH : realMatrix seedMatrix * H₂ = 0) :
    let X := realMatrix BasisNorm.matrix
    ∃ zs : EuclideanSpace ℝ (Fin 4) → EuclideanSpace ℝ (Fin 21),
      AnalyticAt ℝ zs 0 ∧ zs 0 = 0 ∧
      ∀ᶠ w in 𝓝 0, phaseResidual (C.phase + predictorIncrement U H₂ X w (zs w)) = 0 := by
  dsimp only
  let X := realMatrix BasisNorm.matrix
  let θ : EuclideanSpace ℝ (Fin 4) → (Fin 4 → ℝ) := fun w => th0R B + M *ᵥ w
  have haθ : ContDiff ℝ ω θ := by
    apply contDiff_pi.mpr
    intro k
    simp only [θ, Pi.add_apply, Matrix.mulVec, dotProduct]
    fun_prop
  have hθ0 : θ 0 = th0R B := by simp [θ]
  obtain ⟨qs, hsa, hs0, hs⟩ := C.phase_germ
  let qp : EuclideanSpace ℝ (Fin 4) → RMat6 := fun w => C.phase + predictorIncrement U H₂ X w 0
  have hpa : AnalyticAt ℝ qp 0 := analyticAt_const.add
    ((contDiff_predictorIncrement U H₂ X).contDiffAt.analyticAt.comp
      ((contDiff_id.prodMk contDiff_const).contDiffAt.analyticAt))
  have hqa : AnalyticAt ℝ (fun w => qs (θ w)) 0 :=
    (hθ0.symm ▸ hsa).comp (haθ.contDiffAt.analyticAt)
  have hq0 : qs (θ 0) = qp 0 := by simp [hθ0, hs0, qp, predictorIncrement_zero]
  have hlocal := haθ.continuous.continuousAt.tendsto.eventually (hθ0 ▸ hs)
  have hker : ∀ᶠ w in 𝓝 0, IsHorizontal (qs (θ w) - qp w) ∧
      cornerTheta (qs (θ w) - qp w) 1 1 = 0 := by
    filter_upwards [hlocal] with w hw
    have hi : IsHorizontal (predictorIncrement U H₂ X w 0) := by
      have hz : phaseMap X 0 = 0 := by ext i j; simp [phaseMap, unflatPhase]
      rw [predictorIncrement, hz, add_zero]
      exact horizontal_add (horizontal_phaseMap U hU w)
        (horizontal_smul (horizontal_phaseMap H₂ hH _) _)
    refine ⟨?_, ?_⟩
    · have hh := horizontal_sub hw.1 hi
      convert hh using 1
      dsimp [qp]
      abel
    · rw [seedPhase_sub, hw.2.1]
      have hi : cornerTheta (predictorIncrement U H₂ X w 0) 1 1 = M *ᵥ w := by
        have hz : phaseMap X 0 = 0 := by ext i j; simp [phaseMap, unflatPhase]
        rw [predictorIncrement, hz, add_zero, seedPhase_add]
        have hh : cornerTheta ((1/2 : ℝ) • phaseMap H₂ (tensorPair w w)) 1 1 = 0 := by
          have hs := seed_phaseMap H₂ (tensorPair w w)
          rw [hLH, Matrix.zero_mulVec] at hs
          ext k
          have hk := congrFun hs k
          fin_cases k <;> simp [cornerTheta, cornerD] at hk ⊢ <;> linarith
        rw [hh, add_zero, seed_phaseMap, hLU]
      change θ w - cornerTheta (C.phase + predictorIncrement U H₂ X w 0) 1 1 = 0
      rw [seedPhase_add, C.seed_eq, hi]
      simp [θ]
  obtain ⟨zs, hza, hz0, hz⟩ := frozen_normal_germ (realMatrix BasisRegular.matrix)
    BasisRegular.nonsingular hqa hpa hq0 hker
  refine ⟨zs, hza, hz0, ?_⟩
  filter_upwards [hz, hlocal] with w hw hlocal
  apply phaseResidual_zero_of_hadamard
  have he : C.phase + predictorIncrement U H₂ X w (zs w) = qs (θ w) := by
    rw [← hw, ← BasisGeometry.phaseMap_eq]
    dsimp [qp, predictorIncrement]
    have hz : phaseMap X 0 = 0 := by ext i j; simp [phaseMap, unflatPhase]
    rw [hz]
    abel
  rw [he]
  exact hlocal.2.2.1

/-- Z §4: the local matched germ and finite centre bounds give full Hadamard
solutions on the closed ball, not merely zeros of the projected equation. -/
theorem CertifiedCentre.full_family {B : BallD} {D : BoxD} {o : ℤˣ}
    (C : CertifiedCentre B D o) (W : Projection) (U : PhaseSeed)
    (H₂ : Matrix (Fin 36) (Fin 16) ℝ) (M : Matrix (Fin 4) (Fin 4) ℝ)
    (b : Bounds ℝ) (cn sn tn dn : Fin 90 → ℝ)
    (hf : FiniteCentreBounds
      (centreFourier (phaseMat C.phase) W U H₂ (realMatrix BasisNorm.matrix)).model b cn sn tn dn)
    (hU : realMatrix horizontalMatrix * U = U) (hH : realMatrix horizontalMatrix * H₂ = H₂)
    (hLU : realMatrix seedMatrix * U = M) (hLH : realMatrix seedMatrix * H₂ = 0)
    (hn : b.Nonneg) (hr : 0 < b.r) (hτ : 0 < b.tau) (hq : b.q < 1)
    (hb : b.b0 + b.q * b.tau < b.tau) :
    ∃ z : EuclideanSpace ℝ (Fin 4) → EuclideanSpace ℝ (Fin 21),
      (∀ w ∈ closedBall 0 b.r, ‖z w‖ < b.tau ∧
        Hadamard6.IsHadamard (phaseMat (C.phase +
          predictorIncrement U H₂ (realMatrix BasisNorm.matrix) w (z w)))) ∧
      AnalyticOnNhd ℝ z (ball 0 b.r) ∧ ContinuousOn z (closedBall 0 b.r) := by
  obtain ⟨zs, hza, hz0, hz⟩ := C.normal_germ U H₂ M hU hH hLU hLH
  let H : EuclideanSpace ℝ (Fin 4) × EuclideanSpace ℝ (Fin 21) → (Fin 30 → ℝ) :=
    fun p => phaseResidual (C.phase + predictorIncrement U H₂ (realMatrix BasisNorm.matrix) p.1 p.2)
  have ha : ContDiff ℝ ω H := contDiff_phaseResidual.comp
    (contDiff_const.add (contDiff_predictorIncrement U H₂ (realMatrix BasisNorm.matrix)))
  have hp : ∀ w z, H (w, z) = 0 →
      (centreFourier (phaseMat C.phase) W U H₂ (realMatrix BasisNorm.matrix)).model.equation (w, z) = 0 := by
    intro w z hz
    rw [centreFourier_equation]
    change eucMap W (WithLp.toLp 2 (H (w, z))) = 0
    rw [hz]
    simp
  obtain ⟨z, hz, hza, hzc⟩ := hf.analytic_full_family hn hr hτ hq hb H
    (fun p => ha.contDiffAt.analyticAt) hp zs hza hz0 hz
  refine ⟨z, ?_, hza, hzc⟩
  intro w hw
  exact ⟨(hz w hw).1, hadamard_of_phaseResidual_zero (hz w hw).2⟩

end NoFourMUBs.KernelAtlas.WholeBall
