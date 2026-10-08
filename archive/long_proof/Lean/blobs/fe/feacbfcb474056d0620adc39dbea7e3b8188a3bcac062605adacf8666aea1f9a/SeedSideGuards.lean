import SideConstructorUnit
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Bounds

set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace Centiradian20261006.ChartExtension20261006
open scoped ComplexConjugate BigOperators Matrix
open NativeSigned20261006
noncomputable section

def phase (t : ℝ) : ℂ := Complex.exp (Complex.I*(t:ℂ))

theorem phase_add (a u : ℝ) : phase (a+u)=phase a*phase u := by
  simp [phase,Complex.ofReal_add,mul_add,Complex.exp_add]

theorem phase_shift_norm (a u : ℝ) : ‖phase (a+u)-phase a‖ ≤ |u| := by
  rw [phase_add]
  have hf : phase a*phase u-phase a=phase a*(phase u-1) := by ring
  rw [hf,norm_mul]
  simp only [phase,Complex.norm_exp_I_mul_ofReal,one_mul]
  simpa only [Real.norm_eq_abs] using (Real.norm_exp_I_mul_ofReal_sub_one_le (x:=u))

theorem fourier_seed_pair_cancel :
    1+phase (2*Real.pi/3)+phase (4*Real.pi/3)=0 := by
  have ha : (2*Real.pi/3:ℝ)=Real.pi-Real.pi/3 := by ring
  have hb : (4*Real.pi/3:ℝ)=Real.pi+Real.pi/3 := by ring
  apply Complex.ext <;>
    simp [phase,Complex.exp_re,Complex.exp_im,ha,hb,Real.cos_sub,Real.cos_add,
      Real.sin_sub,Real.sin_add,Real.cos_pi_div_three]

theorem seed_four_pair_cancellations (b : Bool) :
    (1+phase (seedAngle b 0)+phase (seedAngle b 1)=0) ∧
    (1+phase (seedAngle b 2)+phase (seedAngle b 3)=0) ∧
    (1+phase (seedAngle b 0)+phase (seedAngle b 2)=0) ∧
    (1+phase (seedAngle b 1)+phase (seedAngle b 3)=0) := by
  have hf := fourier_seed_pair_cancel
  have hr : 1+phase (4*Real.pi/3)+phase (2*Real.pi/3)=0 := by
    calc
      _ = 1+phase (2*Real.pi/3)+phase (4*Real.pi/3) := by ring
      _ = 0 := hf
  cases b
  · simpa [seedAngle] using And.intro hf (And.intro hr (And.intro hf hr))
  · simpa [seedAngle] using And.intro hr (And.intro hf (And.intro hr hf))

theorem shifted_pair_sum_bound (a b u v r : ℝ)
    (hbase : 1+phase a+phase b=0) (hu : |u| ≤ r) (hv : |v| ≤ r) :
    ‖1+phase (a+u)+phase (b+v)‖ ≤ 2*r := by
  have heq : 1+phase (a+u)+phase (b+v)=
      (phase (a+u)-phase a)+(phase (b+v)-phase b) := by
    calc
      _ = (phase (a+u)-phase a)+(phase (b+v)-phase b)+(1+phase a+phase b) := by ring
      _ = _ := by rw [hbase,add_zero]
  rw [heq]
  calc
    _ ≤ ‖phase (a+u)-phase a‖+‖phase (b+v)-phase b‖ := norm_add_le _ _
    _ ≤ 2*r := by linarith [phase_shift_norm a u,phase_shift_norm b v]

/-- Actual leading-block row and column sum bounds at both literal seeds,
including the outer boundary. No physical orthogonality assumption is needed. -/
theorem seedBall_side_sum_bounds {H : Mat6} (hd : Dephased H)
    (b : Bool) (r : ℝ) (hball : InPuncturedSeedBall H b r) :
    (∀ i : Fin 3, i ≠ 0 → ‖sideSum (blockE H) i‖ ≤ 2*r) ∧
      (∀ i : Fin 3, i ≠ 0 → ‖sideSum (blockE H)ᵀ i‖ ≤ 2*r) := by
  obtain ⟨u,he,hu,_⟩ := hball
  have he0 : H 1 1=phase (seedAngle b 0+u 0) := by simpa [seedEntry,phase] using he 0
  have he1 : H 1 2=phase (seedAngle b 1+u 1) := by simpa [seedEntry,phase] using he 1
  have he2 : H 2 1=phase (seedAngle b 2+u 2) := by simpa [seedEntry,phase] using he 2
  have he3 : H 2 2=phase (seedAngle b 3+u 3) := by simpa [seedEntry,phase] using he 3
  obtain ⟨hc0,hc1,hc2,hc3⟩ := seed_four_pair_cancellations b
  have h0 := shifted_pair_sum_bound _ _ _ _ r hc0 (hu 0) (hu 1)
  have h1 := shifted_pair_sum_bound _ _ _ _ r hc1 (hu 2) (hu 3)
  have h2 := shifted_pair_sum_bound _ _ _ _ r hc2 (hu 0) (hu 2)
  have h3 := shifted_pair_sum_bound _ _ _ _ r hc3 (hu 1) (hu 3)
  constructor
  · intro i hi
    fin_cases i
    · exact (hi rfl).elim
    · simpa [sideSum,blockE,upperIndex,Fin.sum_univ_succ,hd.2,he0,he1,add_assoc] using h0
    · simpa [sideSum,blockE,upperIndex,Fin.sum_univ_succ,hd.2,he2,he3,add_assoc] using h1
  · intro i hi
    fin_cases i
    · exact (hi rfl).elim
    · simpa [sideSum,blockE,upperIndex,Fin.sum_univ_succ,Matrix.transpose_apply,
        hd.1,he0,he2,add_assoc] using h2
    · simpa [sideSum,blockE,upperIndex,Fin.sum_univ_succ,Matrix.transpose_apply,
        hd.1,he1,he3,add_assoc] using h3

/-- The actual physical anchor choices satisfy the required denominator and
square-root guards throughout the seed domain, at either stationary seed. -/
theorem physical_seed_side_guards {H : Mat6} (hH : Physical H) (hd : Dephased H)
    (b : Bool) (r : ℝ) (hball : InPuncturedSeedBall H b r)
    (hr : r ≤ radiusEnvelope) :
    (∀ i : Fin 3, i ≠ 0 →
      sideArgument (blockE H) (fun k => blockB H k 0) i ≠ 0 ∧
        Complex.normSq (sideArgument (blockE H) (fun k => blockB H k 0) i) < 16/13) ∧
    (∀ i : Fin 3, i ≠ 0 →
      sideArgument (blockE H)ᵀ (fun k => blockC H 0 k) i ≠ 0 ∧
        Complex.normSq (sideArgument (blockE H)ᵀ (fun k => blockC H 0 k) i) < 16/13) := by
  obtain ⟨hrow,hcol⟩ := seedBall_side_sum_bounds hd b r hball
  constructor
  · intro i hi
    exact (anchoredSum_guards _ _ (hH.1 _ _) r (hrow i hi) hr).2
  · intro i hi
    exact (anchoredSum_guards _ _ (hH.1 _ _) r (hcol i hi) hr).2

theorem physical_seed_constructed_sides_unit {H : Mat6} (hH : Physical H) (hd : Dephased H)
    (b : Bool) (r : ℝ) (hball : InPuncturedSeedBall H b r)
    (hr : r ≤ radiusEnvelope) (i j : Fin 3) :
    Complex.normSq (constructedSideK (blockE H) (fun k => blockB H k 0) i j)=1 ∧
      Complex.normSq (constructedSideK (blockE H)ᵀ (fun k => blockC H 0 k) i j)=1 := by
  obtain ⟨hrow,hcol⟩ := seedBall_side_sum_bounds hd b r hball
  constructor
  · exact constructedSideK_unit_from_sums _ _ (fun k => hH.1 _ _) r hrow hr i j
  · exact constructedSideK_unit_from_sums _ _ (fun k => hH.1 _ _) r hcol hr i j

end
end Centiradian20261006.ChartExtension20261006

#print axioms Centiradian20261006.ChartExtension20261006.phase_add
#print axioms Centiradian20261006.ChartExtension20261006.phase_shift_norm
#print axioms Centiradian20261006.ChartExtension20261006.fourier_seed_pair_cancel
#print axioms Centiradian20261006.ChartExtension20261006.seed_four_pair_cancellations
#print axioms Centiradian20261006.ChartExtension20261006.shifted_pair_sum_bound
#print axioms Centiradian20261006.ChartExtension20261006.seedBall_side_sum_bounds
#print axioms Centiradian20261006.ChartExtension20261006.physical_seed_side_guards
#print axioms Centiradian20261006.ChartExtension20261006.physical_seed_constructed_sides_unit
