import PhysicalQMaximal
import FourierWitnessPhases

set_option autoImplicit false
set_option maxHeartbeats 1800000
namespace Seed0024Mathematical20261007
open Centiradian20261006
noncomputable section

theorem physical_nearby_witness_q_small {H : Mat6} (hH : Physical H)
    (hd : Dephased H) (hm : Maximal H) (i j : Fin 6) (hi : 0 < i) (hij : i < j)
    (hsmall : Complex.normSq (H 1 1-1)+Complex.normSq (H 1 2-1) ≤
      5*((77:ℝ)/100000)^2) (v : Fin 4 → ℂ) (hv : ∀ k, ‖v k‖=1)
    (hnear : ‖H i 1-v 0‖+‖H i 3-v 1‖+‖H j 1-v 2‖+‖H j 3-v 3‖ ≤
      6*((2:ℝ)/625)) :
    |(dephasedQ (v 0) (v 1) (v 2) (v 3)).im| < (1:ℝ)/2 := by
  have ha := physical_witness_q_small hH hd hm i j hi hij hsmall
  let z : Fin 4 → ℂ := ![H i 1,H i 3,H j 1,H j 3]
  have hz : ∀ k, ‖z k‖=1 := by
    intro k
    fin_cases k <;> exact physical_unit_norm hH _ _
  have hb := q_im_lipschitz z v hz hv
  change |(dephasedQ (H i 1) (H i 3) (H j 1) (H j 3)).im-
    (dephasedQ (v 0) (v 1) (v 2) (v 3)).im| ≤
    24*(‖H i 1-v 0‖+‖H i 3-v 1‖+‖H j 1-v 2‖+‖H j 3-v 3‖) at hb
  have ht := abs_sub_le
    ((dephasedQ (H i 1) (H i 3) (H j 1) (H j 3)).im)
    ((dephasedQ (H i 1) (H i 3) (H j 1) (H j 3)).im-
      (dephasedQ (v 0) (v 1) (v 2) (v 3)).im)
  rw [sub_sub_cancel] at ht
  linarith

theorem four_witnesses_force_sine_small (w : ℂ) (hw : Complex.normSq w=1)
    (hroot : w^2+w+1=0) (a b : ℝ)
    (h : ∀ j k : Bool, |(dephasedQ w (if j then -cis a else cis a)
      (w^2) (if k then -cis b else cis b)).im| < (1:ℝ)/2) :
    |Real.sin (2*a-b)|+|Real.sin (2*b-a)|+|Real.sin (a+b)| < (1:ℝ)/6 := by
  have h00 := h false false
  have h10 := h true false
  have h01 := h false true
  have h11 := h true true
  rw [cubic_root_q_four_sines w hw hroot] at h00 h10 h01 h11
  simp only [paritySign,Bool.false_eq_true,ite_false,ite_true,one_mul,
    neg_one_mul,mul_neg,neg_neg] at h00 h10 h01 h11
  have h00' : |Real.sin (2*a-b)+Real.sin (2*b-a)-Real.sin (a+b)| < (1:ℝ)/6 := by
    rw [abs_mul,abs_of_pos (by norm_num : (0:ℝ)<3)] at h00
    linarith
  have h10' : |Real.sin (2*a-b)-Real.sin (2*b-a)+Real.sin (a+b)| < (1:ℝ)/6 := by
    rw [abs_mul,abs_of_pos (by norm_num : (0:ℝ)<3)] at h10
    simp only [sub_neg_eq_add,← sub_eq_add_neg] at h10
    linarith
  have h01' : |-Real.sin (2*a-b)+Real.sin (2*b-a)+Real.sin (a+b)| < (1:ℝ)/6 := by
    rw [abs_mul,abs_of_pos (by norm_num : (0:ℝ)<3)] at h01
    simp only [sub_neg_eq_add] at h01
    linarith
  have h11' : |Real.sin (2*a-b)+Real.sin (2*b-a)+Real.sin (a+b)| < (1:ℝ)/6 := by
    rw [abs_mul,abs_of_pos (by norm_num : (0:ℝ)<3)] at h11
    have he : -Real.sin (2*a-b)+ -Real.sin (2*b-a)-Real.sin (a+b)=
      -(Real.sin (2*a-b)+Real.sin (2*b-a)+Real.sin (a+b)) := by ring
    rw [he,abs_neg] at h11
    linarith
  exact local_abs_sum_lt_of_four _ _ _ _ h00' h10' h01' h11'

end
end Seed0024Mathematical20261007
#print axioms Seed0024Mathematical20261007.physical_nearby_witness_q_small
#print axioms Seed0024Mathematical20261007.four_witnesses_force_sine_small
