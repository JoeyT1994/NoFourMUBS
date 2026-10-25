import KernelAtlas.Edge.Smooth

/-! Entrywise calculus for the forced completion. No matrix norm is chosen. -/

open Complex Matrix Hadamard6 NoFourMUBs.SeedAtlas

noncomputable section

namespace NoFourMUBs.KernelAtlas.Edge

variable {X : Type*} [NormedAddCommGroup X] [NormedSpace ℝ X]

lemma differentiableAt_matrix_det {n : ℕ} {A : X → Matrix (Fin n) (Fin n) ℂ} {t : X}
    (hA : ∀ i j, DifferentiableAt ℝ (fun s => A s i j) t) :
    DifferentiableAt ℝ (fun s => (A s).det) t := by
  simp only [Matrix.det_apply]
  fun_prop

lemma differentiableAt_matrix_inv {n : ℕ} {A : X → Matrix (Fin n) (Fin n) ℂ} {t : X}
    (hA : ∀ i j, DifferentiableAt ℝ (fun s => A s i j) t)
    (hi : IsUnit (A t).det) (i j : Fin n) :
    DifferentiableAt ℝ (fun s => (A s)⁻¹ i j) t := by
  have hd := (differentiableAt_matrix_det hA).inv (isUnit_iff_ne_zero.mp hi)
  have ha : DifferentiableAt ℝ (fun s => (A s).adjugate i j) t := by
    simp only [Matrix.adjugate_apply]
    apply differentiableAt_matrix_det
    intro k l
    simp only [Matrix.updateRow_apply]
    split_ifs <;> fun_prop
  simp only [Matrix.inv_def, Ring.inverse_eq_inv', Matrix.smul_apply, smul_eq_mul]
  exact (hd.fun_mul ha).congr_of_eventuallyEq (Filter.Eventually.of_forall fun s => rfl)

set_option maxHeartbeats 1000000 in
lemma differentiableAt_forcedD {E B C : X → Mat3} {t : X}
    (hE : ∀ i j, DifferentiableAt ℝ (fun s => E s i j) t)
    (hB : ∀ i j, DifferentiableAt ℝ (fun s => B s i j) t)
    (hC : ∀ i j, DifferentiableAt ℝ (fun s => C s i j) t)
    (hi : IsUnit (B t).det) (i j : Fin 3) :
    DifferentiableAt ℝ (fun s => forcedD (E s) (B s) (C s) i j) t := by
  have hI := differentiableAt_matrix_inv hB hi
  have hc : ∀ k l, DifferentiableAt ℝ (fun s => (starRingEnd ℂ) ((B s)⁻¹ k l)) t :=
    fun k l => Complex.conjCLE.differentiableAt.comp t (hI k l)
  have he : ∀ k l, DifferentiableAt ℝ (fun s => (starRingEnd ℂ) (E s k l)) t :=
    fun k l => Complex.conjCLE.differentiableAt.comp t (hE k l)
  have hm (k : Fin 3) : DifferentiableAt ℝ (fun s => ∑ l : Fin 3, -(C s i l) * (starRingEnd ℂ) (E s k l)) t :=
    DifferentiableAt.fun_sum fun l _ => (hC i l).neg.mul (he k l)
  have H := DifferentiableAt.fun_sum (u := Finset.univ) (fun k _ => (hm k).mul (hc j k))
  exact H.congr_of_eventuallyEq (Filter.Eventually.of_forall fun s => by
    simp only [forcedD, Matrix.mul_apply, Matrix.conjTranspose_apply, Matrix.neg_apply, Pi.mul_apply,
      neg_mul, Finset.sum_neg_distrib] <;> rfl)

lemma hasDerivAt_matrix_mul {m n p : ℕ}
    {A : ℝ → Matrix (Fin m) (Fin n) ℂ} {B : ℝ → Matrix (Fin n) (Fin p) ℂ}
    {dA : Matrix (Fin m) (Fin n) ℂ} {dB : Matrix (Fin n) (Fin p) ℂ} {t : ℝ}
    (hA : ∀ i j, HasDerivAt (fun s => A s i j) (dA i j) t)
    (hB : ∀ i j, HasDerivAt (fun s => B s i j) (dB i j) t) (i : Fin m) (j : Fin p) :
    HasDerivAt (fun s => (A s * B s) i j) ((dA*B t+A t*dB) i j) t := by
  have H := HasDerivAt.fun_sum (u := Finset.univ) (fun k _ => (hA i k).mul (hB k j))
  refine (H.congr_deriv ?_).congr_of_eventuallyEq (Filter.Eventually.of_forall fun s => ?_)
  · simp only [Matrix.mul_apply, Matrix.add_apply, Finset.sum_add_distrib]
  · rfl

lemma hasDerivAt_matrix_conjTranspose {n : ℕ} {A : ℝ → Matrix (Fin n) (Fin n) ℂ}
    {dA : Matrix (Fin n) (Fin n) ℂ} {t : ℝ}
    (hA : ∀ i j, HasDerivAt (fun s => A s i j) (dA i j) t) (i j : Fin n) :
    HasDerivAt (fun s => (A s)ᴴ i j) (dAᴴ i j) t :=
  Complex.conjCLE.toContinuousLinearMap.hasFDerivAt.comp_hasDerivAt t (hA j i)

end NoFourMUBs.KernelAtlas.Edge
