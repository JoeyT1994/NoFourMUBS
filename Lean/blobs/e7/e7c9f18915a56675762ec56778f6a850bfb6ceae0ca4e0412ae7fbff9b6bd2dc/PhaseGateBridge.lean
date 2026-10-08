import PhaseCubeCertificates

namespace Mub6.PhaseCube
open Complex
local notation "conj" => starRingEnd ℂ
noncomputable section

theorem phase_target_direct_unit (T : ℂ) (hT : T ≠ 0) :
    normSq (T/conj T)=1 := by
  rw [map_div₀,normSq_conj]
  exact div_self (mt normSq_eq_zero.mp hT)

theorem phase_target_dictionary (T : ℂ) (rho : ℝ)
    (hr : rho ≠ 0) (hn : normSq T=rho^3) :
    (T/(rho : ℂ))^2/(rho : ℂ)=T/conj T := by
  have hT : T≠0 := by
    intro h
    rw [h,normSq_zero] at hn
    have : rho^3=0 := hn.symm
    exact hr (pow_eq_zero this)
  have hc : conj T≠0 := by simpa using hT
  have hcplx : T*conj T=(rho : ℂ)^3 := by
    rw [mul_conj,hn]
    push_cast
    rfl
  have hrC : (rho : ℂ)≠0 := by exact_mod_cast hr
  field_simp
  linear_combination T*hcplx

theorem sigma_norm (T : ℂ) (rho : ℝ) (hr : rho≠0)
    (hn : normSq T=rho^3) :
    normSq (T/(rho : ℂ))=rho := by
  rw [map_div₀,normSq_ofReal,hn]
  field_simp
  <;> ring

theorem phase_root_to_old_cube (T w : ℂ) (rho : ℝ)
    (hr : rho≠0) (hn : normSq T=rho^3)
    (hw : normSq w=1) (hc : w^3=T/conj T) :
    ((T/(rho : ℂ))*conj w)^3=T ∧
      normSq ((T/(rho : ℂ))*conj w)=rho := by
  let s := T/(rho : ℂ)
  have hrC : (rho : ℂ)≠0 := by exact_mod_cast hr
  have hunit : w*conj w=1 := by rw [mul_conj,hw]; norm_num
  have ht : w^3=s^2/(rho : ℂ) := by
    dsimp [s]
    rw [phase_target_dictionary T rho hr hn]
    exact hc
  have hs : w^3*(rho : ℂ)=s^2 := (eq_div_iff hrC).mp ht
  constructor
  · change (s*conj w)^3=T
    calc
      _ = s*s^2*(conj w)^3 := by ring
      _ = s*(w^3*(rho : ℂ))*(conj w)^3 := by rw [hs]
      _ = (rho : ℂ)*s*(w*conj w)^3 := by ring
      _ = T := by rw [hunit]; dsimp [s]; field_simp
  · rw [normSq_mul,normSq_conj,hw,mul_one]
    exact sigma_norm T rho hr hn

theorem sigma_gate_error (sigma sigma0 w c : ℂ) (a e m : ℝ)
    (hc : normSq c=1)
    (hs : ‖sigma-sigma0‖ ≤ a) (hw : ‖w-c‖ ≤ e) (hm : ‖sigma‖ ≤ m) :
    ‖sigma*conj w-sigma0*conj c‖ ≤ a+m*e := by
  have hcn : ‖c‖=1 := by
    rw [Complex.normSq_eq_norm_sq] at hc
    nlinarith [norm_nonneg c]
  have he : 0 ≤ e := le_trans (norm_nonneg _) hw
  have hm' : 0 ≤ m := le_trans (norm_nonneg _) hm
  have herr : sigma*conj w-sigma0*conj c =
      (sigma-sigma0)*conj c+sigma*conj (w-c) := by rw [map_sub]; ring
  rw [herr]
  calc
    _ ≤ ‖(sigma-sigma0)*conj c‖+‖sigma*conj (w-c)‖ := norm_add_le _ _
    _ = ‖sigma-sigma0‖+‖sigma‖*‖w-c‖ := by
      simp only [norm_mul,Complex.norm_conj,hcn,mul_one]
    _ ≤ a+m*e := by
      have hp := mul_le_mul hm hw (norm_nonneg _) hm'
      linarith

theorem certified_phase_to_old_cube (r : RootRecipe) (b : TargetBox)
    (hvalid : r.Valid b) (T : ℂ) (rho : ℝ)
    (hr : rho≠0) (hn : normSq T=rho^3)
    (hmem : b.Contains (T/conj T)) :
    ∃ w tau : ℂ, w^3=T/conj T ∧ normSq w=1 ∧
      normSq (w-r.center) ≤ (r.radius : ℝ)^2 ∧
      tau=(T/(rho : ℂ))*conj w ∧ tau^3=T ∧ normSq tau=rho := by
  have hT : T≠0 := by
    intro h
    rw [h,normSq_zero] at hn
    exact hr (pow_eq_zero hn.symm)
  obtain ⟨w,hw,hwn,hd,_⟩ := phase_box_root_sound r b hvalid
    (T/conj T) hmem (phase_target_direct_unit T hT)
  have ht := phase_root_to_old_cube T w rho hr hn hwn hw
  exact ⟨w,_,hw,hwn,hd,rfl,ht.1,ht.2⟩

#print axioms phase_target_direct_unit
#print axioms phase_target_dictionary
#print axioms sigma_norm
#print axioms phase_root_to_old_cube
#print axioms sigma_gate_error
#print axioms certified_phase_to_old_cube
end
end Mub6.PhaseCube
