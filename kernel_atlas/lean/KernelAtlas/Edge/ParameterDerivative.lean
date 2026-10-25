import KernelAtlas.Edge.RootDerivative

/-! Explicit parameter derivatives of the augmented equations. -/

open Complex Matrix Hadamard6 NoFourMUBs.Side NoFourMUBs.Step2 NoFourMUBs.SeedAtlas

noncomputable section

namespace NoFourMUBs.KernelAtlas.Edge

open Seed L1.FlatCircuits

/-- Derivative of the three negative Gram targets in the first three seed angles. -/
def gramParameter (v : Bool) (ρ : Fin 4 → ℂ) (da : Fin 3 → ℝ) : Fin 3 → ℂ :=
  if v then
    ![I * ρ 0 * da 0 + I * ρ 2 * da 2,
      I * ρ 1 * da 1,
      I * ρ 1 * (starRingEnd ℂ) (ρ 0) * (da 1 - da 0) - I * ρ 3 * (starRingEnd ℂ) (ρ 2) * da 2]
  else
    ![I * ρ 0 * da 0 + I * ρ 1 * da 1,
      I * ρ 2 * da 2,
      I * ρ 2 * (starRingEnd ℂ) (ρ 0) * (da 2 - da 0) - I * ρ 3 * (starRingEnd ℂ) (ρ 1) * da 1]

lemma hasDerivAt_rho_parameters (a da : Fin 3 → ℝ) (t : ℝ) :
    (∀ k : Fin 3, HasDerivAt (fun τ : ℝ => rho4 (a + τ • da) t k.castSucc)
      (I * da k * rho4 a t k.castSucc) 0) ∧
    HasDerivAt (fun τ : ℝ => rho4 (a + τ • da) t 3) 0 0 := by
  constructor
  · intro k
    have h := hasDerivAt_cexp_line (a k) (da k)
    fin_cases k <;> simpa [rho4_apply, th4] using h
  · have he : (fun τ : ℝ => rho4 (a + τ • da) t 3) = fun _ : ℝ => rho4 a t 3 := by
      funext τ
      simp [rho4_apply, th4]
    rw [he]
    exact hasDerivAt_const (0 : ℝ) (rho4 a t 3)

/-- Directional derivative in the explicit angle parameters, keeping the side root fixed. -/
theorem hasDerivAt_gram_parameters (v : Bool) (a da : Fin 3 → ℝ) (ξ : Fin 7 → ℝ) (k : Fin 3) :
    HasDerivAt (fun τ : ℝ => sideG (gs v (rho4 (a + τ • da) (ξ 0)))
      (gt v (rho4 (a + τ • da) (ξ 0))) (gr v (rho4 (a + τ • da) (ξ 0))) (phiOf ξ) k)
      (gramParameter v (rho4 a (ξ 0)) da k) 0 := by
  obtain ⟨hρ, h3⟩ := hasDerivAt_rho_parameters a da (ξ 0)
  have hc (j : Fin 3) := Complex.conjCLE.toContinuousLinearMap.hasFDerivAt.comp_hasDerivAt
    (0 : ℝ) (hρ j)
  cases v
  · fin_cases k
    · have h := (hasDerivAt_const (0 : ℝ) (sS (sx (phiOf ξ)))).sub (((hρ 0).const_add 1).add (hρ 1)).neg
      refine (h.congr_deriv ?_).congr_of_eventuallyEq (Filter.Eventually.of_forall fun τ => ?_)
      · simp -failIfUnchanged [sideG, gs, sh, gramParameter] <;> ring
      · simp [sideG, gs, sh, gramParameter]
    · have h := (hasDerivAt_const (0 : ℝ) (sS (sy (phiOf ξ)))).sub (((hρ 2).const_add 1).add h3).neg
      refine (h.congr_deriv ?_).congr_of_eventuallyEq (Filter.Eventually.of_forall fun τ => ?_)
      · simp -failIfUnchanged [sideG, gt, th, gramParameter] <;> ring
      · simp [sideG, gt, th, gramParameter]
    · have h := (hasDerivAt_const (0 : ℝ) (rS (sx (phiOf ξ)) (sy (phiOf ξ)))).sub
        ((((hρ 2).mul (hc 0)).const_add 1).add (h3.mul (hc 1))).neg
      refine (h.congr_deriv ?_).congr_of_eventuallyEq (Filter.Eventually.of_forall fun τ => ?_)
      · simp -failIfUnchanged [sideG, gr, rh, gramParameter, Complex.conj_I] <;> ring
      · simp [sideG, gr, rh, gramParameter, Complex.conj_I]
  · fin_cases k
    · have h := (hasDerivAt_const (0 : ℝ) (sS (sx (phiOf ξ)))).sub (((hρ 0).const_add 1).add (hρ 2)).neg
      refine (h.congr_deriv ?_).congr_of_eventuallyEq (Filter.Eventually.of_forall fun τ => ?_)
      · simp -failIfUnchanged [sideG, gs, sv, gramParameter] <;> ring
      · simp [sideG, gs, sv, gramParameter]
    · have h := (hasDerivAt_const (0 : ℝ) (sS (sy (phiOf ξ)))).sub (((hρ 1).const_add 1).add h3).neg
      refine (h.congr_deriv ?_).congr_of_eventuallyEq (Filter.Eventually.of_forall fun τ => ?_)
      · simp -failIfUnchanged [sideG, gt, tv, gramParameter] <;> ring
      · simp [sideG, gt, tv, gramParameter]
    · have h := (hasDerivAt_const (0 : ℝ) (rS (sx (phiOf ξ)) (sy (phiOf ξ)))).sub
        ((((hρ 1).mul (hc 0)).const_add 1).add (h3.mul (hc 2))).neg
      refine (h.congr_deriv ?_).congr_of_eventuallyEq (Filter.Eventually.of_forall fun τ => ?_)
      · simp -failIfUnchanged [sideG, gr, rv, gramParameter, Complex.conj_I] <;> ring
      · simp [sideG, gr, rv, gramParameter, Complex.conj_I]

def parameterAction (v : Bool) (ρ : Fin 4 → ℂ) (da : Fin 3 → ℝ) (dy : ℝ) : Fin 7 → ℝ :=
  fun i => if h : i.1 < 3 then (gramParameter v ρ da ⟨i.1, h⟩).re
    else if h' : i.1 < 6 then (gramParameter v ρ da ⟨i.1 - 3, by omega⟩).im
    else lsgn v * dy / 2

theorem hasDerivAt_edge_parameters (v : Bool) (a da : Fin 3 → ℝ) (y dy : ℝ) (ξ : Fin 7 → ℝ) :
    HasDerivAt (fun τ : ℝ => edgeF v (a + τ • da) (y + τ * dy) ξ)
      (parameterAction v (rho4 a (ξ 0)) da dy) 0 := by
  rw [hasDerivAt_pi]
  intro i
  by_cases h3 : i.1 < 3
  · have h := Complex.reCLM.hasFDerivAt.comp_hasDerivAt (0 : ℝ)
      (hasDerivAt_gram_parameters v a da ξ ⟨i.1, h3⟩)
    refine (h.congr_deriv ?_).congr_of_eventuallyEq (Filter.Eventually.of_forall fun τ => ?_)
    · simp only [parameterAction, dif_pos h3, Complex.reCLM_apply]
    · simp only [edgeF, dif_pos (show i.1 < 6 by omega), sideF, dif_pos h3,
        Function.comp_apply, Complex.reCLM_apply]
  · by_cases h6 : i.1 < 6
    · have h := Complex.imCLM.hasFDerivAt.comp_hasDerivAt (0 : ℝ)
        (hasDerivAt_gram_parameters v a da ξ ⟨i.1 - 3, by omega⟩)
      refine (h.congr_deriv ?_).congr_of_eventuallyEq (Filter.Eventually.of_forall fun τ => ?_)
      · simp only [parameterAction, dif_neg h3, dif_pos h6, Complex.imCLM_apply]
      · simp only [edgeF, dif_pos h6, sideF, dif_neg h3, Function.comp_apply, Complex.imCLM_apply]
    · have h := ((((hasDerivAt_id (0 : ℝ)).mul_const dy).const_add y).const_mul (lsgn v)).div_const 2
      refine ((h.const_add (psiS (phiOf ξ)).im).congr_deriv ?_).congr_of_eventuallyEq
        (Filter.Eventually.of_forall fun τ => ?_)
      · simp only [parameterAction, dif_neg h3, dif_neg h6, one_mul]
      · simp only [edgeF, dif_neg h6, id_eq]

def angleRate (B : EBallD) (w : Fin 4 → ℝ) : Fin 3 → ℝ := fun k => ∑ j, MR B k.castSucc j * w j

def labelRate (B : EBallD) (w : Fin 4 → ℝ) : ℝ := ∑ j, MR B 3 j * w j

lemma aR_line (B : EBallD) (D : EBoxD) (u w : Fin 4 → ℝ) (τ : ℝ) :
    aR B (ewOf D (u + τ • w)) = aR B (ewOf D u) + τ • angleRate B w := by
  funext k
  simp only [aR, ewOf, angleRate, Pi.add_apply, Pi.smul_apply, smul_eq_mul, Fin.sum_univ_four]
  ring

lemma yR_line (B : EBallD) (D : EBoxD) (u w : Fin 4 → ℝ) (τ : ℝ) :
    yR B (ewOf D (u + τ • w)) = yR B (ewOf D u) + τ * labelRate B w := by
  simp only [yR, ewOf, labelRate, Pi.add_apply, Pi.smul_apply, smul_eq_mul, Fin.sum_univ_four]
  ring

/-- The 7 by 4 parameter Jacobian, with the ball frame applied. -/
def parameterJ (B : EBallD) (v : Bool) (ρ : Fin 4 → ℂ) : Matrix (Fin 7) (Fin 4) ℝ :=
  fun i j => parameterAction v ρ (fun k => MR B k.castSucc j) (MR B 3 j) i

lemma parameterJ_mulVec (B : EBallD) (v : Bool) (ρ : Fin 4 → ℂ) (w : Fin 4 → ℝ) :
    (parameterJ B v ρ).mulVec w = parameterAction v ρ (angleRate B w) (labelRate B w) := by
  funext i
  fin_cases i <;> cases v <;>
    simp [Matrix.mulVec, dotProduct, Fin.sum_univ_four, parameterJ, parameterAction,
      gramParameter, angleRate, labelRate, lsgn, Complex.mul_re, Complex.mul_im] <;> ring

/-- Explicit directional derivative of the source parameter map. -/
theorem hasDerivAt_edgeParam_parameters (B : EBallD) (D : EBoxD) (v : Bool)
    (u w : Fin 4 → ℝ) (ξ : Fin 7 → ℝ) :
    HasDerivAt (fun τ : ℝ => edgeParam B D v (u + τ • w, ξ))
      ((parameterJ B v (rho4 (aR B (ewOf D u)) (ξ 0))).mulVec w) 0 := by
  simp only [edgeParam, aR_line, yR_line, parameterJ_mulVec]
  exact hasDerivAt_edge_parameters v _ _ _ _ ξ

theorem edgeParam_partial_parameter (B : EBallD) (D : EBoxD) (v : Bool)
    (u : Fin 4 → ℝ) (ξ : Fin 7 → ℝ) :
    fderiv ℝ (edgeParam B D v) (u, ξ) ∘L ContinuousLinearMap.inl ℝ (Fin 4 → ℝ) (Fin 7 → ℝ) =
      matrixCLM (parameterJ B v (rho4 (aR B (ewOf D u)) (ξ 0))) := by
  ext w : 1
  have hd := ((contDiff_edgeParam B D v).differentiable (by simp)).differentiableAt.hasFDerivAt (x := (u, ξ))
  have hc : HasDerivAt (fun t : ℝ => (u + t • w, ξ)) (w, 0) 0 := by
    simpa using (((hasDerivAt_id (0 : ℝ)).smul_const w).const_add u).prodMk (hasDerivAt_const (0 : ℝ) ξ)
  have h := hd.comp_hasDerivAt_of_eq (0 : ℝ) hc (by simp)
  exact h.unique (hasDerivAt_edgeParam_parameters B D v u w ξ)

end NoFourMUBs.KernelAtlas.Edge
