import PhaseModelRows

/-! The orientation and antipodal pairing estimates follow from the actual
small inner products of the model rows. -/
set_option autoImplicit false
namespace Seed0024.Orientation
open scoped ComplexConjugate
noncomputable section

theorem model_pair_compatible (s t u v : Bool) (lam mu : ℂ)
    (hlam : ‖lam‖=1) (hmu : ‖mu‖=1)
    (hsmall : ‖rowInner (modelRow s t lam) (modelRow u v mu)‖<(16:ℝ)/625) :
    s=u ↔ t=v := by
  rw [modelRow_inner] at hsmall
  constructor
  · intro hs
    by_contra ht
    rw [if_pos hs,if_neg ht,mul_zero,add_zero] at hsmall
    norm_num at hsmall
  · intro ht
    by_contra hs
    rw [if_neg hs,if_pos ht,zero_add,norm_mul,norm_mul,
      Complex.norm_conj,hlam,hmu] at hsmall
    norm_num at hsmall

theorem model_same_type_pair_bound (s t : Bool) (lam mu : ℂ)
    (hmu : ‖mu‖=1)
    (hsmall : ‖rowInner (modelRow s t lam) (modelRow s t mu)‖<(16:ℝ)/625) :
    ‖lam+mu‖<(16:ℝ)/1875 := by
  have he : 1+lam*conj mu=(lam+mu)*conj mu := by
    have hc : mu*conj mu=1 := by simpa [hmu] using Complex.mul_conj' mu
    rw [add_mul,hc]
    ring
  rw [modelRow_inner,if_pos rfl,if_pos rfl] at hsmall
  have he2 : (3:ℂ)+lam*conj mu*3=3*(1+lam*conj mu) := by ring
  rw [he2,norm_mul,Complex.norm_ofNat,he,norm_mul,Complex.norm_conj,hmu,mul_one] at hsmall
  linarith

theorem compatible_from_model_inners (s t : Fin 4 → Bool) (lam : Fin 4 → ℂ)
    (hunit : ∀i,‖lam i‖=1)
    (hinner : ∀i j,i≠j→‖rowInner (modelRow (s i) (t i) (lam i))
      (modelRow (s j) (t j) (lam j))‖<(16:ℝ)/625) : Compatible s t := by
  intro i j
  by_cases hij : i=j
  · subst j
    rfl
  · exact model_pair_compatible _ _ _ _ _ _ (hunit i) (hunit j) (hinner i j hij)

theorem pair_bounds_from_model_inners (s t : Fin 4 → Bool) (lam : Fin 4 → ℂ)
    (hunit : ∀i,‖lam i‖=1)
    (hinner : ∀i j,i≠j→‖rowInner (modelRow (s i) (t i) (lam i))
      (modelRow (s j) (t j) (lam j))‖<(16:ℝ)/625) :
    ∀i j,i≠j→SameType s t i j→‖lam i+lam j‖<(16:ℝ)/1875 := by
  intro i j hij ht
  have h:=hinner i j hij
  rw [← ht.1,← ht.2] at h
  exact model_same_type_pair_bound _ _ _ _ (hunit j) h

/-- No finite-geometric premise remains after actual model inner-product estimates. -/
theorem four_types_from_model_inners (s t : Fin 4 → Bool) (lam : Fin 4 → ℂ)
    (hunit : ∀i,‖lam i‖=1)
    (hinner : ∀i j,i≠j→‖rowInner (modelRow (s i) (t i) (lam i))
      (modelRow (s j) (t j) (lam j))‖<(16:ℝ)/625) :
    ∃ κ : Bool, (∀ i, (s i, t i) = (false, κ) ∨ (s i, t i) = (true, !κ)) ∧
      (Finset.univ.filter (fun i : Fin 4 => (s i, t i) = (false, κ))).card = 2 ∧
      (Finset.univ.filter (fun i : Fin 4 => (s i, t i) = (true, !κ))).card = 2 := by
  exact four_types_from_pair_bounds s t lam
    (compatible_from_model_inners s t lam hunit hinner) hunit
    (pair_bounds_from_model_inners s t lam hunit hinner)

#print axioms model_pair_compatible
#print axioms model_same_type_pair_bound
#print axioms compatible_from_model_inners
#print axioms pair_bounds_from_model_inners
#print axioms four_types_from_model_inners
end
end Seed0024.Orientation
