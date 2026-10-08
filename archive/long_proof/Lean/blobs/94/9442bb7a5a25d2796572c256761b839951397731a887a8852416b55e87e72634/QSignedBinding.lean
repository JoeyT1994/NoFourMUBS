import SignedDeterminantFoundation

set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace Seed0024Mathematical20261007
open scoped ComplexConjugate
open Centiradian20261006.SignedDeterminant
noncomputable section

def dephasedQ (a b c d : ℂ) : ℂ :=
  (a*d+b*c+a+b+c+d) * (a*d-b*c-a+b+c-d)^2 / (a*b*c*d)

/-- Literal polynomial identity connecting the determinant/permanent q
to the already checked signed corner invariant. -/
theorem rawDet_eq_q_difference (a b c d : ℂ)
    (ha : Complex.normSq a=1) (hb : Complex.normSq b=1)
    (hc : Complex.normSq c=1) (hd : Complex.normSq d=1) :
    rawDet a b c d = dephasedQ a b c d-conj (dephasedQ a b c d) := by
  have ha0 := nonzero_of_normSq_one ha
  have hb0 := nonzero_of_normSq_one hb
  have hc0 := nonzero_of_normSq_one hc
  have hd0 := nonzero_of_normSq_one hd
  unfold rawDet dephasedQ
  simp only [map_div, map_add, map_sub, map_mul, map_pow]
  simp only [conj_eq_inv_of_normSq_one ha, conj_eq_inv_of_normSq_one hb,
    conj_eq_inv_of_normSq_one hc, conj_eq_inv_of_normSq_one hd]
  field_simp [ha0, hb0, hc0, hd0]
  <;> ring

theorem fastSigned_eq_twice_q_im (a b c d : ℂ)
    (ha : Complex.normSq a=1) (hb : Complex.normSq b=1)
    (hc : Complex.normSq c=1) (hd : Complex.normSq d=1) :
    fastSigned a b c d = 2*(dephasedQ a b c d).im := by
  rw [← rawDet_im_eq_signed a b c d ha hb hc, rawDet_eq_q_difference a b c d ha hb hc hd]
  simp
  ring

end
end Seed0024Mathematical20261007
#print axioms Seed0024Mathematical20261007.rawDet_eq_q_difference
#print axioms Seed0024Mathematical20261007.fastSigned_eq_twice_q_im
