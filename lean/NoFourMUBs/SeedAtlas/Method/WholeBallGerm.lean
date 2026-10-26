import NoFourMUBs.SeedAtlas.Method.WholeBallOrientation
import Mathlib.Analysis.SpecialFunctions.Complex.Analytic

/-!
# The local phase lift and horizontal gauge in Z §1

The lift is centred at the specified real phase matrix. In particular it does
not replace that matrix by entrywise principal arguments. A local analytic
matched matrix family lifts to the local germ used by analytic continuation.
-/

open Matrix Hadamard6 Complex Filter Topology NoFourMUBs.Step2
open scoped ContDiff
open scoped Matrix.Norms.Elementwise

noncomputable section

namespace NoFourMUBs.SeedAtlas.Method.WholeBall

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]

/-- The continuous branch of the phase through the prescribed centre. -/
def centrePhase (a : ℝ) (z : ℂ) : ℝ := a + (z / Complex.exp (a * I)).arg

lemma centrePhase_self (a : ℝ) : centrePhase a (Complex.exp (a * I)) = a := by
  simp [centrePhase, Complex.exp_ne_zero]

lemma analyticAt_centrePhase (a : ℝ) :
    AnalyticAt ℝ (centrePhase a) (Complex.exp (a * I)) := by
  have hd : AnalyticAt ℝ (fun z : ℂ => z / Complex.exp (a * I)) (Complex.exp (a * I)) :=
    analyticAt_id.div analyticAt_const (Complex.exp_ne_zero _)
  have hl : AnalyticAt ℝ Complex.log (Complex.exp (a * I) / Complex.exp (a * I)) := by
    simpa only [div_self (Complex.exp_ne_zero _)] using
      (analyticAt_clog Complex.one_mem_slitPlane).restrictScalars (𝕜 := ℝ)
  have hc := hl.comp (f := fun z : ℂ => z / Complex.exp (a * I)) hd
  have him := (Complex.imCLM.analyticAt _).comp
    (f := fun z : ℂ => Complex.log (z / Complex.exp (a * I))) hc
  have hsum := (analyticAt_const (v := a)).add him
  change AnalyticAt ℝ (fun z : ℂ => a + (Complex.log (z / Complex.exp (a * I))).im)
    (Complex.exp (a * I)) at hsum
  change AnalyticAt ℝ (fun z : ℂ => a + (z / Complex.exp (a * I)).arg) _
  simpa only [Complex.log_im] using hsum

lemma exp_centrePhase (a : ℝ) {z : ℂ} (hz : Complex.normSq z = 1) :
    Complex.exp (centrePhase a z * I) = z := by
  have hn : ‖z / Complex.exp (a * I)‖ = 1 := by
    have hs : Complex.normSq (z / Complex.exp (a * I)) = 1 := by
      rw [Complex.normSq_div, hz, normSq_exp_real_mul_I, div_one]
    rw [Complex.normSq_eq_norm_sq] at hs
    nlinarith [norm_nonneg (z / Complex.exp (a * I))]
  have he := Complex.norm_mul_exp_arg_mul_I (z / Complex.exp (a * I))
  rw [hn, Complex.ofReal_one, one_mul] at he
  simp only [centrePhase, Complex.ofReal_add, add_mul, Complex.exp_add, he]
  field_simp

def centrePhaseMat (q0 : RMat6) (H : Mat6) : RMat6 := fun i j => centrePhase (q0 i j) (H i j)

lemma centrePhaseMat_self (q0 : RMat6) : centrePhaseMat q0 (phaseMat q0) = q0 := by
  ext i j
  exact centrePhase_self _

lemma phaseMat_centrePhaseMat (q0 : RMat6) {H : Mat6} (hH : EntrywiseUnit H) :
    phaseMat (centrePhaseMat q0 H) = H := by
  ext i j
  exact exp_centrePhase _ (hH i j)

lemma analyticAt_centrePhaseMat {H : E → Mat6} {x : E} {q0 : RMat6}
    (hH : AnalyticAt ℝ H x) (h0 : H x = phaseMat q0) :
    AnalyticAt ℝ (fun y => centrePhaseMat q0 (H y)) x := by
  apply analyticAt_pi_iff.mpr
  intro i
  apply analyticAt_pi_iff.mpr
  intro j
  have he := analyticAt_pi_iff.mp (analyticAt_pi_iff.mp hH i) j
  have ha : AnalyticAt ℝ (centrePhase (q0 i j)) (H x i j) := by
    rw [h0]
    exact analyticAt_centrePhase _
  exact ha.comp (f := fun y => H y i j) he

@[fun_prop] lemma contDiff_hor : ContDiff ℝ ω hor := by
  apply contDiff_pi.mpr
  intro i
  apply contDiff_pi.mpr
  intro j
  dsimp [hor, rowMean, colMean, allMean]
  fun_prop

@[fun_prop] lemma contDiff_seedPhase : ContDiff ℝ ω (fun Q : RMat6 => cornerTheta Q 1 1) := by
  apply contDiff_pi.mpr
  intro k
  fin_cases k <;> dsimp [cornerTheta, cornerD] <;> fun_prop

lemma seedPhase_add (Q P : RMat6) :
    cornerTheta (Q + P) 1 1 = cornerTheta Q 1 1 + cornerTheta P 1 1 := by
  ext k
  fin_cases k <;> simp [cornerTheta, cornerD] <;> ring

lemma seedPhase_sub (Q P : RMat6) :
    cornerTheta (Q - P) 1 1 = cornerTheta Q 1 1 - cornerTheta P 1 1 := by
  ext k
  fin_cases k <;> simp [cornerTheta, cornerD] <;> ring

lemma seedPhase_hor (Q : RMat6) : cornerTheta (hor Q) 1 1 = cornerTheta Q 1 1 := by
  ext k
  fin_cases k <;> simp [cornerTheta, cornerD, hor] <;> ring

/-- Horizontal increments are obtained by row and column phases, even when
the fixed centre itself is not horizontal. -/
lemma rowColEquiv_add_hor (P Y : RMat6) :
    RowColEquiv (phaseMat (P + Y)) (phaseMat (P + hor Y)) := by
  refine ⟨fun i => Complex.exp ((allMean Y - rowMean Y i : ℝ) * I),
    fun j => Complex.exp ((-colMean Y j : ℝ) * I),
    fun _ => normSq_exp_real_mul_I _, fun _ => normSq_exp_real_mul_I _, ?_⟩
  intro i j
  simp only [phaseMat, hor, of_apply, Matrix.add_apply]
  rw [← Complex.exp_add, ← Complex.exp_add]
  congr 1
  push_cast
  ring

omit [NormedSpace ℝ E] in
/-- Equality of circle-valued phases lifts locally to equality of real phases
when their centre values coincide. -/
lemma eventually_eq_of_circle_exp {f g : E → ℝ} {x : E}
    (hf : ContinuousAt f x) (hg : ContinuousAt g x) (h0 : f x = g x)
    (he : ∀ᶠ y in 𝓝 x, Circle.exp (f y) = Circle.exp (g y)) :
    f =ᶠ[𝓝 x] g := by
  have hp := Real.pi_pos
  have hif : ∀ᶠ y in 𝓝 x, f y ∈ Set.Ioo (f x - Real.pi / 2) (f x + Real.pi / 2) :=
    hf (isOpen_Ioo.mem_nhds (by constructor <;> linarith))
  have hig : ∀ᶠ y in 𝓝 x, g y ∈ Set.Ioo (f x - Real.pi / 2) (f x + Real.pi / 2) :=
    hg (isOpen_Ioo.mem_nhds (by rw [← h0]; constructor <;> linarith))
  filter_upwards [hif, hig, he] with y hyf hyg hey
  exact Circle.exp_injOn_Icc (by linarith) ⟨hyf.1.le, hyf.2.le⟩ ⟨hyg.1.le, hyg.2.le⟩ hey

lemma seedOf_seedPhase_of_matched {Q : RMat6} {θ : Fin 4 → ℝ} {o : ℤˣ}
    (hm : MatchedO o (seedOf θ) (phaseMat Q)) :
    seedOf (cornerTheta Q 1 1) = seedOf θ := by
  have he := leadingBlock_cornerMat_phaseMat 0 1 1 Q
  change leadingBlock (dephase (phaseMat Q)) = seedCorner (seedOf (cornerTheta Q 1 1)) at he
  rw [dephase_of_dephased hm.1, hm.2.1] at he
  ext k
  have hentry := congrFun (congrFun he (cornerIdx k).1) (cornerIdx k).2
  fin_cases k <;> simpa [seedCorner, cornerIdx, corner] using hentry.symm

/-- The local-germ hypothesis of Z §1 follows from a local analytic matched
matrix family. It preserves the specified phase centre and has horizontal
increments and the exact real seed coordinates. -/
theorem local_phase_germ {H : (Fin 4 → ℝ) → Mat6} {θ0 : Fin 4 → ℝ}
    {q0 : RMat6} {o : ℤˣ} (ha : AnalyticAt ℝ H θ0)
    (h0 : H θ0 = phaseMat q0) (hL : cornerTheta q0 1 1 = θ0)
    (hm : ∀ᶠ θ in 𝓝 θ0, Hadamard6.IsHadamard (H θ) ∧ MatchedO o (seedOf θ) (H θ)) :
    ∃ q : (Fin 4 → ℝ) → RMat6, AnalyticAt ℝ q θ0 ∧ q θ0 = q0 ∧
      ∀ᶠ θ in 𝓝 θ0, IsHorizontal (q θ - q0) ∧ cornerTheta (q θ) 1 1 = θ ∧
        Hadamard6.IsHadamard (phaseMat (q θ)) ∧ RepO o (seedOf θ) (phaseMat (q θ)) := by
  let Q := fun θ => centrePhaseMat q0 (H θ)
  have hQa : AnalyticAt ℝ Q θ0 := analyticAt_centrePhaseMat ha h0
  have hQ0 : Q θ0 = q0 := by simp [Q, h0, centrePhaseMat_self]
  have hQH : ∀ᶠ θ in 𝓝 θ0, phaseMat (Q θ) = H θ := by
    filter_upwards [hm] with θ hθ
    exact phaseMat_centrePhaseMat q0 hθ.1.1
  have hseed : ∀ᶠ θ in 𝓝 θ0, cornerTheta (Q θ) 1 1 = θ := by
    have hall : ∀ k : Fin 4, ∀ᶠ θ in 𝓝 θ0, cornerTheta (Q θ) 1 1 k = θ k := by
      intro k
      apply eventually_eq_of_circle_exp
        ((continuous_apply k).continuousAt.comp
          (contDiff_seedPhase.continuous.continuousAt.comp hQa.continuousAt))
        (continuous_apply k).continuousAt (by simp only [Function.comp_apply, hQ0, hL])
      filter_upwards [hm, hQH] with θ hθ hθQ
      exact congrFun (seedOf_seedPhase_of_matched (hθQ ▸ hθ.2)) k
    filter_upwards [Filter.eventually_all.mpr hall] with θ hθ
    exact funext hθ
  let q := fun θ => q0 + hor (Q θ - q0)
  have hqa : AnalyticAt ℝ q θ0 :=
    analyticAt_const.add (contDiff_hor.contDiffAt.analyticAt.comp
      (f := fun θ => Q θ - q0) (hQa.sub analyticAt_const))
  refine ⟨q, hqa, ?_, ?_⟩
  · simp [q, hQ0, hor_zero]
  · filter_upwards [hm, hQH, hseed] with θ hθ hθQ hθL
    have he : RowColEquiv (H θ) (phaseMat (q θ)) := by
      have he := rowColEquiv_add_hor q0 (Q θ - q0)
      simpa only [add_sub_cancel, hθQ] using he
    refine ⟨?_, ?_, isHadamard_of_equivalent he.equivalent hθ.1, H θ, hθ.1, hθ.2, he⟩
    · simpa only [q, add_sub_cancel_left] using hor_isHorizontal (Q θ - q0)
    · simp only [q, seedPhase_add, seedPhase_hor, seedPhase_sub, add_sub_cancel, hθL]

/-- A linear inverse for the normal basis turns the phase germ into the normal
coordinate germ required by `full_residual_of_local_germ`. The predictor and
the germ have the same centre; their difference is in the normal range. -/
theorem local_normal_coordinates {F D : Type*}
    [NormedAddCommGroup F] [NormedSpace ℝ F]
    [NormedAddCommGroup D] [NormedSpace ℝ D]
    (X : F →L[ℝ] D) (Y : D →L[ℝ] F) {qs qp : E → D} {w0 : E}
    (hs : AnalyticAt ℝ qs w0) (hp : AnalyticAt ℝ qp w0) (h0 : qs w0 = qp w0)
    (hXY : ∀ᶠ w in 𝓝 w0, X (Y (qs w - qp w)) = qs w - qp w) :
    ∃ zs : E → F, AnalyticAt ℝ zs w0 ∧ zs w0 = 0 ∧
      ∀ᶠ w in 𝓝 w0, qp w + X (zs w) = qs w := by
  refine ⟨fun w => Y (qs w - qp w),
    (Y.analyticAt _).comp (f := fun w => qs w - qp w) (hs.sub hp), ?_, ?_⟩
  · simp [h0]
  · filter_upwards [hXY] with w hw
    rw [hw]
    abel

end NoFourMUBs.SeedAtlas.Method.WholeBall
