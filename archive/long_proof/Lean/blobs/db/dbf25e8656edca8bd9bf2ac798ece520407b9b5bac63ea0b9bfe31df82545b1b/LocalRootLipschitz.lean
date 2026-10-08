import LocalRootEnclosures

/-! Optional local refinement. A positive polynomial lower bound for the
factored cubic derivative gives an a posteriori residual bound. -/
namespace Hadamard6Extensions.LocalRootEnclosures
noncomputable section

theorem cubic_difference_local_factor (u c : ℂ) :
    u^3-c^3 = (u-c)*((3:ℂ)*c^2+3*c*(u-c)+(u-c)^2) := by ring

theorem cubic_local_derivative_lower (u c : ℂ) (r κ : ℝ)
    (hclose : ‖u-c‖ ≤ r)
    (hsep : κ ≤ 3*‖c‖^2-3*‖c‖*r-r^2) :
    κ ≤ ‖(3:ℂ)*c^2+3*c*(u-c)+(u-c)^2‖ := by
  have hr : 0 ≤ r := le_trans (norm_nonneg _) hclose
  have herr : ‖(3:ℂ)*c*(u-c)+(u-c)^2‖ ≤ 3*‖c‖*r+r^2 := by
    calc
      ‖(3:ℂ)*c*(u-c)+(u-c)^2‖ ≤
          ‖(3:ℂ)*c*(u-c)‖+‖(u-c)^2‖ := norm_add_le _ _
      _ = 3*‖c‖*‖u-c‖+‖u-c‖^2 := by
        simp only [norm_mul, norm_pow]
        norm_num
      _ ≤ 3*‖c‖*r+r^2 := by
        have h1 := mul_le_mul_of_nonneg_left hclose
          (mul_nonneg (by norm_num : (0:ℝ) ≤ 3) (norm_nonneg c))
        have h2 := (sq_le_sq₀ (norm_nonneg (u-c)) hr).2 hclose
        linarith
  have htri : ‖(3:ℂ)*c^2‖ ≤
      ‖(3:ℂ)*c^2+3*c*(u-c)+(u-c)^2‖+
      ‖(3:ℂ)*c*(u-c)+(u-c)^2‖ := by
    calc
      ‖(3:ℂ)*c^2‖ =
          ‖((3:ℂ)*c^2+3*c*(u-c)+(u-c)^2)-
            ((3:ℂ)*c*(u-c)+(u-c)^2)‖ := by congr 1; ring
      _ ≤ _ := norm_sub_le _ _
  have hm : ‖(3:ℂ)*c^2‖ = 3*‖c‖^2 := by
    simp only [norm_mul, norm_pow]
    norm_num
  rw [hm] at htri
  linarith

theorem cubic_local_residual_product (u c : ℂ) (r κ : ℝ)
    (hclose : ‖u-c‖ ≤ r)
    (hsep : κ ≤ 3*‖c‖^2-3*‖c‖*r-r^2) :
    ‖u-c‖*κ ≤ ‖u^3-c^3‖ := by
  have hder := cubic_local_derivative_lower u c r κ hclose hsep
  calc
    ‖u-c‖*κ ≤ ‖u-c‖*‖(3:ℂ)*c^2+3*c*(u-c)+(u-c)^2‖ :=
      mul_le_mul_of_nonneg_left hder (norm_nonneg _)
    _ = ‖u^3-c^3‖ := by rw [cubic_difference_local_factor, norm_mul]

theorem cube_local_normSq_lipschitz (u c : ℂ) (r L M κ : ℝ)
    (hr : 0 ≤ r) (hM : 0 ≤ M) (hκ : 0 < κ)
    (hclose : Complex.normSq (u-c) ≤ r^2)
    (hL : L ≤ Complex.normSq c) (hU : Complex.normSq c ≤ M^2)
    (hsep : κ ≤ 3*L-3*M*r-r^2) :
    Complex.normSq (u-c) ≤ Complex.normSq (u^3-c^3)/κ^2 := by
  have hd : ‖u-c‖ ≤ r := by
    apply (sq_le_sq₀ (norm_nonneg _) hr).mp
    simpa only [Complex.normSq_eq_norm_sq] using hclose
  have hc : ‖c‖ ≤ M := by
    apply (sq_le_sq₀ (norm_nonneg _) hM).mp
    simpa only [Complex.normSq_eq_norm_sq] using hU
  have hlow : L ≤ ‖c‖^2 := by
    simpa only [Complex.normSq_eq_norm_sq] using hL
  have hmul := mul_le_mul_of_nonneg_right hc hr
  have hsep' : κ ≤ 3*‖c‖^2-3*‖c‖*r-r^2 := by nlinarith
  have hp := cubic_local_residual_product u c r κ hd hsep'
  have hsq : (‖u-c‖*κ)^2 ≤ ‖u^3-c^3‖^2 :=
    (sq_le_sq₀ (mul_nonneg (norm_nonneg _) hκ.le) (norm_nonneg _)).2 hp
  apply (le_div_iff₀ (sq_pos_of_pos hκ)).2
  simpa only [mul_pow, Complex.normSq_eq_norm_sq] using hsq

theorem exists_cube_root_refined (T c : ℂ) (r L M κ : ℝ)
    (hr : 0 ≤ r) (hM : 0 ≤ M) (hκ : 0 < κ)
    (hres : Complex.normSq (T-c^3) ≤ r^6)
    (hL : L ≤ Complex.normSq c) (hU : Complex.normSq c ≤ M^2)
    (hsep : κ ≤ 3*L-3*M*r-r^2) :
    ∃ τ : ℂ, τ^3=T ∧ Complex.normSq (τ-c) ≤ r^2 ∧
      Complex.normSq (τ-c) ≤ Complex.normSq (T-c^3)/κ^2 := by
  obtain ⟨τ,ht,hd⟩ := exists_cube_root_near T c r hres
  refine ⟨τ,ht,hd,?_⟩
  have hb := cube_local_normSq_lipschitz τ c r L M κ hr hM hκ hd hL hU hsep
  simpa only [ht] using hb

#check cubic_difference_local_factor
#check cubic_local_derivative_lower
#check cubic_local_residual_product
#check cube_local_normSq_lipschitz
#check exists_cube_root_refined
#print axioms cubic_difference_local_factor
#print axioms cubic_local_derivative_lower
#print axioms cubic_local_residual_product
#print axioms cube_local_normSq_lipschitz
#print axioms exists_cube_root_refined
end
end Hadamard6Extensions.LocalRootEnclosures
