import KernelAtlas.FrameK
import NoFourMUBs.SeedAtlas.Edge

/-! Exact frame coordinates for the edge graph property. -/

open Matrix Hadamard6 NoFourMUBs.SeedAtlas

noncomputable section

namespace NoFourMUBs.KernelAtlas.Edge

/-- The inverse Gram matrix applied to the four frame inner products. -/
def frameEta (F : QFrame) (q : FrameQ) : RMat6 →L[ℝ] (Fin 4 → ℝ) :=
  ({ toFun := fun δ l => ∑ m : Fin 4, (q.Gi l m : ℝ) * ∑ a, ∑ c, F.toR m a c * δ a c
     map_add' := by intro x y; ext l; simp [mul_add, Finset.sum_add_distrib]
     map_smul' := by
       intro r x
       ext l
       simp only [Pi.smul_apply, Matrix.smul_apply, smul_eq_mul, RingHom.id_apply,
         Finset.mul_sum, mul_left_comm, mul_assoc]
    } : RMat6 →ₗ[ℝ] (Fin 4 → ℝ)).toContinuousLinearMap

lemma frameEta_apply (F : QFrame) (q : FrameQ) (δ : RMat6) (l : Fin 4) :
    frameEta F q δ l = ∑ m : Fin 4, (q.Gi l m : ℝ) * ∑ a, ∑ c, F.toR m a c * δ a c := rfl

/-- The checked frame inverse supplies exactly the `heta` field. -/
theorem frameEta_normal {F : QFrame} {q : FrameQ} (h : frameOK F q = true)
    (δ : RMat6) (hδ : IsHorizontal δ) :
    IsHorizontal (δ - tang F.toR (frameEta F q δ)) ∧
      ∀ k, ∑ a, ∑ c, F.toR k a c * (δ - tang F.toR (frameEta F q δ)) a c = 0 := by
  obtain ⟨-, -, -, _, _, _, _, -, -, -, hinv⟩ := frameOK_parts h
  set b : Fin 4 → ℝ := fun m => ∑ a, ∑ c, F.toR m a c * δ a c
  let η := frameEta F q δ
  set ν : RMat6 := δ - ∑ k, η k • F.toR k
  have hinvR : ∀ k m, ∑ l, (gramQ F k l : ℝ) * q.Gi l m = kd k m := by
    intro k m
    have := congrArg (fun x : ℚ => (x : ℝ)) (hinv k m)
    simp only [s4_cast] at this; push_cast at this; exact this
  have horth : ∀ k, ∑ a, ∑ c, F.toR k a c * ν a c = 0 := by
    intro k
    have e1 : ∑ a, ∑ c, F.toR k a c * ν a c = b k - ∑ l, η l * (gramQ F k l : ℝ) := by
      rw [show ν = δ - ∑ l, η l • F.toR l from rfl, inner_sub_comb]
      simp only [gram_cast]; rfl
    have e2 : ∑ l, η l * (gramQ F k l : ℝ) = b k := by
      change (∑ l, (∑ m, (q.Gi l m : ℝ) * b m) * (gramQ F k l : ℝ)) = b k
      simp only [Finset.sum_mul]
      rw [Finset.sum_comm]
      have : ∀ m, ∑ l, (q.Gi l m : ℝ) * b m * (gramQ F k l : ℝ) = kd k m * b m := by
        intro m; rw [← hinvR k m, Finset.sum_mul]; exact Finset.sum_congr rfl fun l _ => by ring
      simp only [this]
      rw [Finset.sum_eq_single k (fun m _ hm => by simp [kd, Ne.symm hm]) (by simp)]
      simp [kd]
    rw [e1, e2, sub_self]
  have hνh : IsHorizontal ν := by
    obtain ⟨hr, hc⟩ := hδ
    refine ⟨fun a => ?_, fun c => ?_⟩
    · simp only [ν, Matrix.sub_apply, Matrix.sum_apply, Matrix.smul_apply, smul_eq_mul, Finset.sum_sub_distrib, hr]
      rw [Finset.sum_comm]
      simp only [← Finset.mul_sum, (frame_hor h _).1, mul_zero, Finset.sum_const_zero, sub_zero]
    · simp only [ν, Matrix.sub_apply, Matrix.sum_apply, Matrix.smul_apply, smul_eq_mul, Finset.sum_sub_distrib, hc]
      rw [Finset.sum_comm]
      simp only [← Finset.mul_sum, (frame_hor h _).2, mul_zero, Finset.sum_const_zero, sub_zero]
  exact ⟨hνh, horth⟩

/-- The graph radius 9/20 satisfies the strict inequality at σ = 17/10. -/
theorem graph_radius : 2 * Real.sqrt 3 * (9 / 20 : ℝ) < 17 / 10 := by
  have hs := Real.sq_sqrt (show (0 : ℝ) ≤ 3 by norm_num)
  have hp := Real.sqrt_nonneg (3 : ℝ)
  nlinarith

end NoFourMUBs.KernelAtlas.Edge
