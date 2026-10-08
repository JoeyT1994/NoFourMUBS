import Mathlib.Data.Complex.Basic
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring

/- Exact complex Hermitian contraction used by advanced_engine.cpp. This
   binds its algebra and rational-vector obstruction, not its native bounds
   or the physical necessity of this particular matrix pencil. -/
set_option autoImplicit false
open ComplexConjugate
namespace HermitianRayBinding

def matrixForm (a : ℝ) (z01 z02 z12 v0 v1 v2 : ℂ) : ℝ :=
  (conj v0*((a:ℂ)*v0+z01*v1+z02*v2)+
   conj v1*(conj z01*v0+(a:ℂ)*v1+z12*v2)+
   conj v2*(conj z02*v0+conj z12*v1+(a:ℂ)*v2)).re

def contractedForm (a : ℝ) (z01 z02 z12 v0 v1 v2 : ℂ) : ℝ :=
  a*(Complex.normSq v0+Complex.normSq v1+Complex.normSq v2)+
    2*((z01*(conj v0*v1)).re+(z02*(conj v0*v2)).re+(z12*(conj v1*v2)).re)

theorem Hermitian_contraction (a : ℝ) (z01 z02 z12 v0 v1 v2 : ℂ) :
    matrixForm a z01 z02 z12 v0 v1 v2 = contractedForm a z01 z02 z12 v0 v1 v2 := by
  simp [matrixForm,contractedForm,Complex.normSq_apply,Complex.mul_re,Complex.mul_im]
  ring

theorem exact_realification (a : ℝ) (z01 z02 z12 : ℂ) (x0 y0 x1 y1 x2 y2 : ℝ) :
    matrixForm a z01 z02 z12 ⟨x0,y0⟩ ⟨x1,y1⟩ ⟨x2,y2⟩ =
      a*(x0^2+y0^2+x1^2+y1^2+x2^2+y2^2)+
      2*(z01.re*(x0*x1+y0*y1)+z01.im*(y0*x1-x0*y1)+
         z02.re*(x0*x2+y0*y2)+z02.im*(y0*x2-x0*y2)+
         z12.re*(x1*x2+y1*y2)+z12.im*(y1*x2-x1*y2)) := by
  simp [matrixForm,Complex.mul_re,Complex.mul_im]
  ring

def HermitianPSD3 (a : ℝ) (z01 z02 z12 : ℂ) : Prop :=
  ∀ v0 v1 v2, 0 ≤ matrixForm a z01 z02 z12 v0 v1 v2

theorem complex_vector_obstruction {a : ℝ} {z01 z02 z12 v0 v1 v2 : ℂ}
    (hnegative : contractedForm a z01 z02 z12 v0 v1 v2 < 0) :
    ¬ HermitianPSD3 a z01 z02 z12 := by
  intro hpsd
  have hn := hpsd v0 v1 v2
  rw [Hermitian_contraction] at hn
  exact (not_lt_of_ge hn) hnegative

theorem rational_complex_vector_obstruction {a : ℝ} {z01 z02 z12 : ℂ}
    (x0 y0 x1 y1 x2 y2 : ℚ)
    (hnegative : contractedForm a z01 z02 z12
      ⟨(x0:ℝ),(y0:ℝ)⟩ ⟨(x1:ℝ),(y1:ℝ)⟩ ⟨(x2:ℝ),(y2:ℝ)⟩ < 0) :
    ¬ HermitianPSD3 a z01 z02 z12 := by
  exact complex_vector_obstruction hnegative

theorem affine_pencil_contraction (a b q : ℝ)
    (z01 z02 z12 w01 w02 w12 v0 v1 v2 : ℂ) :
    contractedForm (a+q*b) (z01+(q:ℂ)*w01) (z02+(q:ℂ)*w02) (z12+(q:ℂ)*w12) v0 v1 v2 =
      contractedForm a z01 z02 z12 v0 v1 v2+q*contractedForm b w01 w02 w12 v0 v1 v2 := by
  simp [contractedForm,Complex.mul_re,Complex.mul_im]
  ring

theorem nonnegative_parameter_endpoint_upper {a b au bu q lo hi : ℝ}
    (ha : a ≤ au) (hb : b ≤ bu) (hq : 0 ≤ q) (hlo : lo ≤ q) (hhi : q ≤ hi) :
    a+q*b ≤ max (au+lo*bu) (au+hi*bu) := by
  have hfirst : a+q*b ≤ au+q*bu := by
    have ht := mul_le_mul_of_nonneg_left hb hq
    linarith
  by_cases hbu : 0 ≤ bu
  · have ht := mul_le_mul_of_nonneg_right hhi hbu
    apply le_trans hfirst
    apply le_trans (show au+q*bu ≤ au+hi*bu by linarith)
    exact le_max_right _ _
  · have ht := mul_le_mul_of_nonpos_right hlo (le_of_not_ge hbu)
    apply le_trans hfirst
    apply le_trans (show au+q*bu ≤ au+lo*bu by linarith)
    exact le_max_left _ _

#print axioms Hermitian_contraction
#print axioms exact_realification
#print axioms complex_vector_obstruction
#print axioms rational_complex_vector_obstruction
#print axioms affine_pencil_contraction
#print axioms nonnegative_parameter_endpoint_upper

end HermitianRayBinding
