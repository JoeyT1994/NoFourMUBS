import SidePairDistance

set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace Centiradian20261006.ChartExtension20261006
open scoped ComplexConjugate BigOperators Matrix
open NativeSigned20261006
noncomputable section

theorem reference_height_value : pairHeight (-1)=Real.sqrt 3/2 := by
  have h0 : 0 ≤ pairHeight (-1) := Real.sqrt_nonneg _
  have h1 := Real.sqrt_nonneg (3:ℝ)
  have h2 := Real.sq_sqrt (by norm_num : (0:ℝ) ≤ 3)
  nlinarith [reference_height_square]

theorem reference_pair_fourier :
    pairPlus (-1)=phase (4*Real.pi/3) ∧ pairMinus (-1)=phase (2*Real.pi/3) := by
  have ha : (2*Real.pi/3:ℝ)=Real.pi-Real.pi/3 := by ring
  have hb : (4*Real.pi/3:ℝ)=Real.pi+Real.pi/3 := by ring
  constructor <;> apply Complex.ext <;>
    simp [pairPlus,pairMinus,reference_height_value,phase,Complex.exp_re,Complex.exp_im,
      ha,hb,Real.cos_add,Real.cos_sub,Real.sin_add,Real.sin_sub,
      Real.cos_pi_div_three,Real.sin_pi_div_three] <;> ring

/-- Actual physical side rows lie within the source's 8r Fourier windows;
the two possible orders are both retained. No branch choice is assumed. -/
theorem physical_side_row_fourier_distance {H : Mat6} (hH : Physical H) (hd : Dephased H)
    (b : Bool) (r : ℝ) (hball : InPuncturedSeedBall H b r)
    (hr : r ≤ radiusEnvelope) (i : Fin 3) (hi : i ≠ 0) :
    (‖H (upperIndex i) 4*conj (H (upperIndex i) 3)-phase (4*Real.pi/3)‖ ≤ 8*r ∧
      ‖H (upperIndex i) 5*conj (H (upperIndex i) 3)-phase (2*Real.pi/3)‖ ≤ 8*r) ∨
    (‖H (upperIndex i) 4*conj (H (upperIndex i) 3)-phase (2*Real.pi/3)‖ ≤ 8*r ∧
      ‖H (upperIndex i) 5*conj (H (upperIndex i) 3)-phase (4*Real.pi/3)‖ ≤ 8*r) := by
  have hs := (seedBall_side_sum_bounds hd b r hball).1 i hi
  have herr := anchored_pair_distance (sideSum (blockE H) i) (blockB H i 0) (hH.1 _ _) r hs hr
  change ‖pairPlus (sideArgument (blockE H) (fun k => blockB H k 0) i)-pairPlus (-1)‖ ≤ 8*r ∧
    ‖pairMinus (sideArgument (blockE H) (fun k => blockB H k 0) i)-pairMinus (-1)‖ ≤ 8*r at herr
  rw [row_sideArgument_eq H hd i,reference_pair_fourier.1,reference_pair_fourier.2] at herr
  rcases physical_seed_side_row_pair hH hd b r hball hr i hi with ⟨hp,hm⟩ | ⟨hm,hp⟩
  · left
    constructor
    · rw [hp]; exact herr.1
    · rw [hm]; exact herr.2
  · right
    constructor
    · rw [hm]; exact herr.2
    · rw [hp]; exact herr.1

theorem physical_side_column_fourier_distance {H : Mat6} (hH : Physical H) (hd : Dephased H)
    (b : Bool) (r : ℝ) (hball : InPuncturedSeedBall H b r)
    (hr : r ≤ radiusEnvelope) (i : Fin 3) (hi : i ≠ 0) :
    (‖H 4 (upperIndex i)*conj (H 3 (upperIndex i))-phase (4*Real.pi/3)‖ ≤ 8*r ∧
      ‖H 5 (upperIndex i)*conj (H 3 (upperIndex i))-phase (2*Real.pi/3)‖ ≤ 8*r) ∨
    (‖H 4 (upperIndex i)*conj (H 3 (upperIndex i))-phase (2*Real.pi/3)‖ ≤ 8*r ∧
      ‖H 5 (upperIndex i)*conj (H 3 (upperIndex i))-phase (4*Real.pi/3)‖ ≤ 8*r) := by
  have hs := (seedBall_side_sum_bounds hd b r hball).2 i hi
  have herr := anchored_pair_distance (sideSum (blockE H)ᵀ i) (blockC H 0 i) (hH.1 _ _) r hs hr
  change ‖pairPlus (sideArgument (blockE H)ᵀ (fun k => blockC H 0 k) i)-pairPlus (-1)‖ ≤ 8*r ∧
    ‖pairMinus (sideArgument (blockE H)ᵀ (fun k => blockC H 0 k) i)-pairMinus (-1)‖ ≤ 8*r at herr
  rw [column_sideArgument_eq H hd i,reference_pair_fourier.1,reference_pair_fourier.2] at herr
  rcases physical_seed_side_column_pair hH hd b r hball hr i hi with ⟨hp,hm⟩ | ⟨hm,hp⟩
  · left
    constructor
    · rw [hp]; exact herr.1
    · rw [hm]; exact herr.2
  · right
    constructor
    · rw [hm]; exact herr.2
    · rw [hp]; exact herr.1

/-- The exact outward radius printed by the radius-3/100 source is covered,
so the new analytic chart guards include its native outer boundary as well. -/
theorem native_radius003_inside_envelope :
    (8646911284551353/288230376151711744:ℝ) < radiusEnvelope := by
  norm_num [radiusEnvelope]

end
end Centiradian20261006.ChartExtension20261006

#print axioms Centiradian20261006.ChartExtension20261006.reference_height_value
#print axioms Centiradian20261006.ChartExtension20261006.reference_pair_fourier
#print axioms Centiradian20261006.ChartExtension20261006.physical_side_row_fourier_distance
#print axioms Centiradian20261006.ChartExtension20261006.physical_side_column_fourier_distance
#print axioms Centiradian20261006.ChartExtension20261006.native_radius003_inside_envelope
