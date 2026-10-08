import QLipschitz

set_option autoImplicit false
set_option maxHeartbeats 1800000
set_option maxRecDepth 20000
namespace Seed0024Mathematical20261007
open scoped ComplexConjugate
open Centiradian20261006.SignedDeterminant
noncomputable section

theorem dephasedQ_row_swap (a b c d : ℂ) :
    dephasedQ a b c d = dephasedQ c d a b := by
  unfold dephasedQ
  congr 1 <;> ring

theorem cubic_root_q_identity (w x y : ℂ)
    (hw : Complex.normSq w=1) (hx : Complex.normSq x=1)
    (hy : Complex.normSq y=1) (hroot : w^2+w+1=0) :
    rawDet w x (w^2) y =
      3*((x^2*conj y-y*(conj x)^2)+(y^2*conj x-x*(conj y)^2)-
        (x*y-conj x*conj y)) := by
  have hw0 := nonzero_of_normSq_one hw
  have hx0 := nonzero_of_normSq_one hx
  have hy0 := nonzero_of_normSq_one hy
  have he : w^3*x^2*y^2*(rawDet w x (w^2) y-
      3*((x^2*conj y-y*(conj x)^2)+(y^2*conj x-x*(conj y)^2)-
        (x*y-conj x*conj y))) =
      (w^2+w+1)*(x^2-y)*
      (w^4*x^2*y-w^4*x*y-w^4*x+w^4*y^2-w^3*x^2*y-w^3*x*y^2+
        w^3*x*y+2*w^3*x-w^3*y^2-w^2*x^2*y+w^2*x*y^2+w^2*x*y-
        w^2*y^2-w*x^2*y+2*w*x*y^3+w*x*y^2-w*x*y-w*y^2+
        x^2*y-x*y^3-x*y^2+y^2) := by
    simp only [rawDet, map_pow, conj_eq_inv_of_normSq_one hw,
      conj_eq_inv_of_normSq_one hx, conj_eq_inv_of_normSq_one hy]
    field_simp [hw0,hx0,hy0]
    <;> ring
  rw [hroot, zero_mul, zero_mul] at he
  have hn : w^3*x^2*y^2≠0 :=
    mul_ne_zero (mul_ne_zero (pow_ne_zero 3 hw0) (pow_ne_zero 2 hx0))
      (pow_ne_zero 2 hy0)
  exact sub_eq_zero.mp ((mul_eq_zero.mp he).resolve_left hn)

theorem cubic_root_q_im (w x y : ℂ)
    (hw : Complex.normSq w=1) (hx : Complex.normSq x=1)
    (hy : Complex.normSq y=1) (hroot : w^2+w+1=0) :
    (dephasedQ w x (w^2) y).im =
      3*((x^2*conj y).im+(y^2*conj x).im-(x*y).im) := by
  have hw2 : Complex.normSq (w^2)=1 := by rw [map_pow,hw]; norm_num
  have he := congrArg Complex.im (cubic_root_q_identity w x y hw hx hy hroot)
  rw [rawDet_im_eq_signed _ _ _ _ hw hx hw2,
    fastSigned_eq_twice_q_im _ _ _ _ hw hx hw2 hy] at he
  have h1 : y*(conj x)^2 = conj (x^2*conj y) := by
    simp only [map_mul,map_pow,starRingEnd_self_apply]; ring
  have h2 : x*(conj y)^2 = conj (y^2*conj x) := by
    simp only [map_mul,map_pow,starRingEnd_self_apply]; ring
  have h3 : conj x*conj y = conj (x*y) := by rw [map_mul]
  rw [h1,h2,h3] at he
  simp only [Complex.mul_im,Complex.ofNat_re,Complex.ofNat_im,
    zero_mul,add_zero,Complex.add_im,Complex.sub_im,Complex.conj_im] at he
  linarith

end
end Seed0024Mathematical20261007
#print axioms Seed0024Mathematical20261007.dephasedQ_row_swap
#print axioms Seed0024Mathematical20261007.cubic_root_q_identity
#print axioms Seed0024Mathematical20261007.cubic_root_q_im
