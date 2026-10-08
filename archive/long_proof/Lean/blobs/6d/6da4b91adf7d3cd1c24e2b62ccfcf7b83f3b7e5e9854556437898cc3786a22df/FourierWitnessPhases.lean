import FourierWitnessAlgebra
import RepeatedFourierColumns

set_option autoImplicit false
set_option maxHeartbeats 1600000
namespace Seed0024Mathematical20261007
open scoped ComplexConjugate
noncomputable section

theorem unit_half_real_cubic_root (w : ℂ) (hw : Complex.normSq w=1)
    (hre : w.re= -(1:ℝ)/2) : w^2+w+1=0 := by
  have hs : w.re^2+w.im^2=1 := by simpa [Complex.normSq_apply,pow_two] using hw
  apply Complex.ext <;> simp [pow_two,Complex.mul_re,Complex.mul_im,hre]
  nlinarith

theorem cis_mul (a b : ℝ) : cis a*cis b=cis (a+b) := by
  apply Complex.ext <;> simp [cis,Real.cos_add,Real.sin_add]

theorem cis_square_conj (a b : ℝ) : (cis a)^2*conj (cis b)=cis (2*a-b) := by
  rw [cis_conj,pow_two,cis_mul,cis_mul]
  congr 1
  ring

theorem cubic_root_q_sines (w : ℂ) (hw : Complex.normSq w=1)
    (hroot : w^2+w+1=0) (a b : ℝ) :
    (dephasedQ w (cis a) (w^2) (cis b)).im =
      3*(Real.sin (2*a-b)+Real.sin (2*b-a)-Real.sin (a+b)) := by
  rw [cubic_root_q_im w (cis a) (cis b) hw (cis_normSq a) (cis_normSq b) hroot,
    cis_square_conj,cis_square_conj,cis_mul]
  rfl

def paritySign (b : Bool) : ℝ := if b then -1 else 1

theorem cubic_root_q_four_signs (w x y : ℂ)
    (hw : Complex.normSq w=1) (hx : Complex.normSq x=1)
    (hy : Complex.normSq y=1) (hroot : w^2+w+1=0) (j k : Bool) :
    (dephasedQ w (if j then -x else x) (w^2) (if k then -y else y)).im =
      3*(paritySign k*(x^2*conj y).im+paritySign j*(y^2*conj x).im-
        paritySign j*paritySign k*(x*y).im) := by
  cases j <;> cases k
  all_goals simp only [Bool.false_eq_true,ite_false,ite_true,paritySign]
  all_goals rw [cubic_root_q_im _ _ _ hw (by simpa using hx) (by simpa using hy) hroot]
  all_goals simp only [neg_sq,map_neg,mul_neg,neg_mul,Complex.neg_im,one_mul,neg_one_mul]
  all_goals ring

theorem cubic_root_q_four_sines (w : ℂ) (hw : Complex.normSq w=1)
    (hroot : w^2+w+1=0) (a b : ℝ) (j k : Bool) :
    (dephasedQ w (if j then -cis a else cis a) (w^2)
      (if k then -cis b else cis b)).im =
      3*(paritySign k*Real.sin (2*a-b)+paritySign j*Real.sin (2*b-a)-
        paritySign j*paritySign k*Real.sin (a+b)) := by
  rw [cubic_root_q_four_signs w (cis a) (cis b) hw (cis_normSq a) (cis_normSq b) hroot,
    cis_square_conj,cis_square_conj,cis_mul]
  rfl

end
end Seed0024Mathematical20261007
#print axioms Seed0024Mathematical20261007.unit_half_real_cubic_root
#print axioms Seed0024Mathematical20261007.cubic_root_q_four_signs
#print axioms Seed0024Mathematical20261007.cubic_root_q_four_sines
