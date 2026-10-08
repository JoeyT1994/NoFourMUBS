import PhysicalWitnessUnordered
import PhaseModelRows

set_option autoImplicit false
set_option maxHeartbeats 1400000
namespace Seed0024Mathematical20261007
open Centiradian20261006 Seed0024.Orientation
noncomputable section

theorem orientation_root_cubic : orientationRoot false^2+orientationRoot false+1=0 := by
  have hm := orientationRoot_mul false
  have hs := orientationRoot_sum
  simp only [Bool.not_false] at hm
  linear_combination orientationRoot false*hs-hm

theorem orientation_root_square : orientationRoot false^2=orientationRoot true := by
  linear_combination orientation_root_cubic-orientationRoot_sum

theorem cis_unit_norm (x : ℝ) : ‖cis x‖=1 := by
  rw [Complex.norm_def,cis_normSq,Real.sqrt_one]

/-- The four witnesses use original physical row indices, so maximality is
never silently transported through a row permutation changing the corner. -/
theorem physical_four_model_sines {H : Mat6} (hH : Physical H)
    (hd : Dephased H) (hm : Maximal H)
    (hsmall : Complex.normSq (H 1 1-1)+Complex.normSq (H 1 2-1) ≤
      5*((77:ℝ)/100000)^2)
    (p m : Bool → Fin 6) (hp : ∀ b, 0 < p b) (hmpos : ∀ b, 0 < m b)
    (hcross : ∀ j k,p j≠m k) (a b : ℝ)
    (hpl : ∀ j, ‖H (p j) 1-orientationRoot false‖ ≤ (2:ℝ)/625)
    (hml : ∀ k, ‖H (m k) 1-orientationRoot true‖ ≤ (2:ℝ)/625)
    (hpr : ∀ j, ‖H (p j) 3-(if j then -cis a else cis a)‖ ≤ 2*((2:ℝ)/625))
    (hmr : ∀ k, ‖H (m k) 3-(if k then -cis b else cis b)‖ ≤ 2*((2:ℝ)/625)) :
    |Real.sin (2*a-b)|+|Real.sin (2*b-a)|+|Real.sin (a+b)| < (1:ℝ)/6 := by
  have hw : Complex.normSq (orientationRoot false)=1 := by
    rw [← norm_square_eq_normSq,orientationRoot_unit]; norm_num
  apply four_witnesses_force_sine_small (orientationRoot false) hw orientation_root_cubic a b
  intro j k
  let v : Fin 4 → ℂ := ![orientationRoot false,
    (if j then -cis a else cis a),orientationRoot false^2,(if k then -cis b else cis b)]
  have hv : ∀ n, ‖v n‖=1 := by
    intro n
    fin_cases n
    · exact orientationRoot_unit false
    · change ‖(if j then -cis a else cis a)‖=1
      cases j <;> simp [cis_unit_norm]
    · change ‖orientationRoot false^2‖=1
      rw [orientation_root_square,orientationRoot_unit]
    · change ‖(if k then -cis b else cis b)‖=1
      cases k <;> simp [cis_unit_norm]
  have hn : ‖H (p j) 1-v 0‖+‖H (p j) 3-v 1‖+
      ‖H (m k) 1-v 2‖+‖H (m k) 3-v 3‖ ≤ 6*((2:ℝ)/625) := by
    change ‖H (p j) 1-orientationRoot false‖+
      ‖H (p j) 3-(if j then -cis a else cis a)‖+
      ‖H (m k) 1-orientationRoot false^2‖+
      ‖H (m k) 3-(if k then -cis b else cis b)‖ ≤ _
    rw [orientation_root_square]
    linarith [hpl j,hml k,hpr j,hmr k]
  exact physical_nearby_witness_q_small_unordered hH hd hm
    (p j) (m k) (hp j) (hmpos k) (hcross j k) hsmall v hv hn

end
end Seed0024Mathematical20261007
#print axioms Seed0024Mathematical20261007.orientation_root_cubic
#print axioms Seed0024Mathematical20261007.orientation_root_square
#print axioms Seed0024Mathematical20261007.physical_four_model_sines
