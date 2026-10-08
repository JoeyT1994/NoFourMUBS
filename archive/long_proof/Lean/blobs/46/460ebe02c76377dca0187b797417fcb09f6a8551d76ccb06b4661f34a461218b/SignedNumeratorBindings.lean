import SignedNumeratorCertificate

set_option autoImplicit false
set_option maxHeartbeats 1500000
set_option maxRecDepth 10000
namespace Centiradian20261006.SignedDeterminant
open scoped ComplexConjugate
noncomputable section

theorem denominator_nonzero {a b c d : ℂ}
    (ha : Complex.normSq a=1) (hb : Complex.normSq b=1)
    (hc : Complex.normSq c=1) (hd : Complex.normSq d=1) : denominator a b c d≠0 := by
  exact mul_ne_zero (mul_ne_zero (mul_ne_zero (nonzero_of_normSq_one ha)
    (nonzero_of_normSq_one hb)) (nonzero_of_normSq_one hc)) (nonzero_of_normSq_one hd)

theorem x_num_binding (a b c d : ℂ)
    (ha : Complex.normSq a=1) (hb : Complex.normSq b=1) :
    denominator a b c d*((-1-a-b)*conj (-1-a-b))=xNum a b c d := by
  have ha0 := nonzero_of_normSq_one ha
  have hb0 := nonzero_of_normSq_one hb
  unfold denominator xNum
  simp only [map_sub, map_neg, map_one, conj_eq_inv_of_normSq_one ha,
    conj_eq_inv_of_normSq_one hb]
  field_simp [ha0,hb0]
  <;> ring

theorem y_num_binding (a b c d : ℂ)
    (hc : Complex.normSq c=1) (hd : Complex.normSq d=1) :
    denominator a b c d*((-1-c-d)*conj (-1-c-d))=yNum a b c d := by
  have hc0 := nonzero_of_normSq_one hc
  have hd0 := nonzero_of_normSq_one hd
  unfold denominator yNum
  simp only [map_sub, map_neg, map_one, conj_eq_inv_of_normSq_one hc,
    conj_eq_inv_of_normSq_one hd]
  field_simp [hc0,hd0]
  <;> ring

theorem z_num_binding (a b c d : ℂ)
    (ha : Complex.normSq a=1) (hb : Complex.normSq b=1)
    (hc : Complex.normSq c=1) (hd : Complex.normSq d=1) :
    denominator a b c d*((-1-c*conj a-d*conj b)*conj (-1-c*conj a-d*conj b))=zNum a b c d := by
  have ha0 := nonzero_of_normSq_one ha
  have hb0 := nonzero_of_normSq_one hb
  have hc0 := nonzero_of_normSq_one hc
  have hd0 := nonzero_of_normSq_one hd
  unfold denominator zNum
  simp only [map_sub, map_neg, map_mul, map_one, starRingEnd_self_apply,
    conj_eq_inv_of_normSq_one ha, conj_eq_inv_of_normSq_one hb,
    conj_eq_inv_of_normSq_one hc, conj_eq_inv_of_normSq_one hd]
  field_simp [ha0,hb0,hc0,hd0]
  <;> ring

theorem p_num_binding (a b c d : ℂ)
    (ha : Complex.normSq a=1) (hb : Complex.normSq b=1)
    (hc : Complex.normSq c=1) (hd : Complex.normSq d=1) :
    denominator a b c d*pComplex (-1-a-b) (-1-c-d) (-1-c*conj a-d*conj b)=pNum a b c d := by
  unfold pComplex
  rw [mul_add, mul_add, x_num_binding a b c d ha hb, y_num_binding a b c d hc hd,
    z_num_binding a b c d ha hb hc hd]
  exact p_num_identity a b c d

theorem j_num_binding (a b c d : ℂ)
    (ha : Complex.normSq a=1) (hb : Complex.normSq b=1)
    (hc : Complex.normSq c=1) (hd : Complex.normSq d=1) :
    denominator a b c d*jComplex (-1-a-b) (-1-c-d) (-1-c*conj a-d*conj b)=jNum a b c d := by
  have ha0 := nonzero_of_normSq_one ha
  have hb0 := nonzero_of_normSq_one hb
  have hc0 := nonzero_of_normSq_one hc
  have hd0 := nonzero_of_normSq_one hd
  unfold denominator jNum jComplex
  simp only [map_add, map_sub, map_mul, map_pow, map_neg, map_one, starRingEnd_self_apply,
    conj_eq_inv_of_normSq_one ha, conj_eq_inv_of_normSq_one hb,
    conj_eq_inv_of_normSq_one hc, conj_eq_inv_of_normSq_one hd]
  field_simp [ha0,hb0,hc0,hd0]
  <;> ring

theorem d_num_binding (a b c d : ℂ)
    (ha : Complex.normSq a=1) (hb : Complex.normSq b=1)
    (hc : Complex.normSq c=1) (hd : Complex.normSq d=1) :
    (denominator a b c d)^2*rawDet a b c d=dNum a b c d := by
  have ha0 := nonzero_of_normSq_one ha
  have hb0 := nonzero_of_normSq_one hb
  have hc0 := nonzero_of_normSq_one hc
  have hd0 := nonzero_of_normSq_one hd
  unfold denominator dNum dNum0 dNum1 dNum2 dNum3 dNum4 rawDet
  simp only [conj_eq_inv_of_normSq_one ha, conj_eq_inv_of_normSq_one hb,
    conj_eq_inv_of_normSq_one hc, conj_eq_inv_of_normSq_one hd]
  field_simp [ha0,hb0,hc0,hd0]
  <;> ring

theorem g_num_binding (a b c d : ℂ)
    (ha : Complex.normSq a=1) (hb : Complex.normSq b=1)
    (hc : Complex.normSq c=1) (hd : Complex.normSq d=1) :
    denominator a b c d*(27-3*pComplex (-1-a-b) (-1-c-d) (-1-c*conj a-d*conj b)-
      jComplex (-1-a-b) (-1-c-d) (-1-c*conj a-d*conj b))=gNum a b c d := by
  calc
    _ = 27*denominator a b c d-3*(denominator a b c d*pComplex (-1-a-b) (-1-c-d) (-1-c*conj a-d*conj b))-
        denominator a b c d*jComplex (-1-a-b) (-1-c-d) (-1-c*conj a-d*conj b) := by ring
    _ = _ := by rw [p_num_binding a b c d ha hb hc hd, j_num_binding a b c d ha hb hc hd]; exact g_num_identity a b c d

theorem e_num_binding (a b c d : ℂ)
    (ha : Complex.normSq a=1) (hb : Complex.normSq b=1)
    (hc : Complex.normSq c=1) (hd : Complex.normSq d=1) :
    denominator a b c d*(9-pComplex (-1-a-b) (-1-c-d) (-1-c*conj a-d*conj b)-
      jComplex (-1-a-b) (-1-c-d) (-1-c*conj a-d*conj b))=eNum a b c d := by
  calc
    _ = 9*denominator a b c d-denominator a b c d*pComplex (-1-a-b) (-1-c-d) (-1-c*conj a-d*conj b)-
        denominator a b c d*jComplex (-1-a-b) (-1-c-d) (-1-c*conj a-d*conj b) := by ring
    _ = _ := by rw [p_num_binding a b c d ha hb hc hd, j_num_binding a b c d ha hb hc hd]; exact e_num_identity a b c d

theorem w_complex_scaled (A s t r : ℂ) : A^3*wComplex s t r =
    A*((A*(s*conj s))*(A*(t*conj t))+(A*(s*conj s))*(A*(r*conj r))+
      (A*(t*conj t))*(A*(r*conj r)))-(A*(s*conj s))*(A*(t*conj t))*(A*(r*conj r)) := by
  unfold wComplex
  ring

theorem c_num_binding (a b c d : ℂ)
    (ha : Complex.normSq a=1) (hb : Complex.normSq b=1)
    (hc : Complex.normSq c=1) (hd : Complex.normSq d=1) :
    (denominator a b c d)^2*(wComplex (-1-a-b) (-1-c-d) (-1-c*conj a-d*conj b)-
      (pComplex (-1-a-b) (-1-c-d) (-1-c*conj a-d*conj b)-9)*
      (pComplex (-1-a-b) (-1-c-d) (-1-c*conj a-d*conj b)-18)-
      (pComplex (-1-a-b) (-1-c-d) (-1-c*conj a-d*conj b)-15)*
      jComplex (-1-a-b) (-1-c-d) (-1-c*conj a-d*conj b))=cNum a b c d := by
  apply mul_left_cancel₀ (denominator_nonzero ha hb hc hd)
  calc
    _ = (denominator a b c d)^3*wComplex (-1-a-b) (-1-c-d) (-1-c*conj a-d*conj b)-
        denominator a b c d*(denominator a b c d*pComplex (-1-a-b) (-1-c-d) (-1-c*conj a-d*conj b)-9*denominator a b c d)*
        (denominator a b c d*pComplex (-1-a-b) (-1-c-d) (-1-c*conj a-d*conj b)-18*denominator a b c d)-
        denominator a b c d*(denominator a b c d*pComplex (-1-a-b) (-1-c-d) (-1-c*conj a-d*conj b)-15*denominator a b c d)*
        (denominator a b c d*jComplex (-1-a-b) (-1-c-d) (-1-c*conj a-d*conj b)) := by ring
    _ = _ := by
      rw [w_complex_scaled, x_num_binding a b c d ha hb, y_num_binding a b c d hc hd,
        z_num_binding a b c d ha hb hc hd, p_num_binding a b c d ha hb hc hd,
        j_num_binding a b c d ha hb hc hd]
      exact c_num_identity a b c d

end
end Centiradian20261006.SignedDeterminant

#print axioms Centiradian20261006.SignedDeterminant.d_num_binding
#print axioms Centiradian20261006.SignedDeterminant.c_num_binding
