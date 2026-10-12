import NoFourMUBs.Reuse.Archive.CriticalNonzeroQuartic
import NoFourMUBs.Reuse.Archive.CriticalNonzeroPolynomialPoles
import Mathlib.Tactic.Positivity

set_option autoImplicit false
set_option maxHeartbeats 2000000
set_option maxRecDepth 10000
namespace CriticalNonzeroRational20261003
open CriticalNonzeroPolynomial20261003
noncomputable section

theorem scalar_denominator_plus (k K : ℂ) (hh : h k≠0) :
    (gram k 1+9*sheet k 1)^3-
      (gram k 1+9*sheet k 1)^2*sheet k 1*p k+
      (gram k 1+9*sheet k 1)*(sheet k 1)^2*(W k+K)-(sheet k 1)^3*K =
      -16*denFactorPlus k K/(h k)^7 := by
  rw [W_formula k hh]
  simpa only [gram,sheet,p,q,J,h,one_mul] using
    CriticalNonzeroPolynomial20261003.denominator_plus k K hh

theorem scalar_denominator_minus (k K : ℂ) (hh : h k≠0) :
    (gram k (-1)+9*sheet k (-1))^3-
      (gram k (-1)+9*sheet k (-1))^2*sheet k (-1)*p k+
      (gram k (-1)+9*sheet k (-1))*(sheet k (-1))^2*(W k+K)-
        (sheet k (-1))^3*K = 16*denFactorMinus k K/(h k)^7 := by
  rw [W_formula k hh]
  simpa only [gram,sheet,p,q,J,h,neg_one_mul,add_neg,sub_eq_add_neg] using
    CriticalNonzeroPolynomial20261003.denominator_minus k K hh

/-- Each apparently extraneous factor in the supplied numerator is exactly
a nonzero scalar multiple of one actual three-pole product. -/
theorem pole_products (X Y Z k K : ℂ) (hh : h k≠0)
    (hp : X+Y+Z=p k) (hw : X*Y+X*Z+Y*Z=W k+K)
    (hk : X*Y*Z=K) :
    pole k 1 X*pole k 1 Y*pole k 1 Z = -16*denFactorPlus k K/(h k)^7 ∧
    pole k (-1) X*pole k (-1) Y*pole k (-1) Z =
      16*denFactorMinus k K/(h k)^7 := by
  constructor
  · dsimp only [pole]
    rw [denominator_product X Y Z (p k) (W k) K (gram k 1) (sheet k 1) hp hw hk]
    exact scalar_denominator_plus k K hh
  · dsimp only [pole]
    rw [denominator_product X Y Z (p k) (W k) K (gram k (-1)) (sheet k (-1)) hp hw hk]
    exact scalar_denominator_minus k K hh

theorem denominator_factors_nonzero (X Y Z k K : ℂ) (hh : h k≠0)
    (hp : X+Y+Z=p k) (hw : X*Y+X*Z+Y*Z=W k+K)
    (hk : X*Y*Z=K)
    (hplus : pole k 1 X≠0 ∧ pole k 1 Y≠0 ∧ pole k 1 Z≠0)
    (hminus : pole k (-1) X≠0 ∧ pole k (-1) Y≠0 ∧ pole k (-1) Z≠0) :
    denFactorMinus k K≠0 ∧ denFactorPlus k K≠0 := by
  obtain ⟨hpole,hmole⟩ := pole_products X Y Z k K hh hp hw hk
  constructor
  · intro he
    have hn := mul_ne_zero (mul_ne_zero hminus.1 hminus.2.1) hminus.2.2
    apply hn
    simpa only [he,mul_zero,zero_div] using hmole
  · intro he
    have hn := mul_ne_zero (mul_ne_zero hplus.1 hplus.2.1) hplus.2.2
    apply hn
    simpa only [he,mul_zero,zero_div] using hpole

/-- A conditional algebraic consumer, not a square-sum evaluation. The
separately required hypothesis is exactly the reduced numerator vanishing. -/
theorem quartic_zero_of_reduced_zero (k K : ℂ)
    (hk : k≠0) (h3 : 3*k^2+1≠0)
    (hm : denFactorMinus k K≠0) (hp : denFactorPlus k K≠0)
    (hn : reducedNumerator k K=0) : quartic k K=0 := by
  rw [reduced_numerator_factorization] at hn
  have hc : (-262144 : ℂ)≠0 := by norm_num
  have ht : k^2*(3*k^2+1)^3*(denFactorMinus k K)^3*(denFactorPlus k K)^3≠0 :=
    mul_ne_zero (mul_ne_zero (mul_ne_zero (pow_ne_zero 2 hk) (pow_ne_zero 3 h3))
      (pow_ne_zero 3 hm)) (pow_ne_zero 3 hp)
  have he : quartic k K*((-262144)*(k^2*(3*k^2+1)^3*
      (denFactorMinus k K)^3*(denFactorPlus k K)^3))=0 := by
    linear_combination hn
  exact (mul_eq_zero.mp he).resolve_right (mul_ne_zero hc ht)

theorem real_parameter_regular (k : ℝ) : h (k : ℂ)≠0 ∧ 3*(k : ℂ)^2+1≠0 := by
  have hh : (1:ℝ)+k^2≠0 := ne_of_gt (by positivity)
  have h3 : (3:ℝ)*k^2+1≠0 := ne_of_gt (by positivity)
  constructor
  · dsimp only [h]
    exact_mod_cast hh
  · exact_mod_cast h3

end
#print axioms scalar_denominator_plus
#print axioms scalar_denominator_minus
#print axioms pole_products
#print axioms denominator_factors_nonzero
#print axioms quartic_zero_of_reduced_zero
#print axioms real_parameter_regular
end CriticalNonzeroRational20261003
