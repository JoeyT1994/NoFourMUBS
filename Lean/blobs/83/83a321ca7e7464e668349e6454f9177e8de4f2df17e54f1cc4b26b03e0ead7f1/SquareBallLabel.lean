import IntegerBallLabel
import SquareNormBounds

/-! A square-only label test with five exact level-dependent cutoffs.
The executable predicate computes neither a norm floor nor a ceiling root.
The soundness proof reuses the frozen actual-cell inclusion theorem. -/
set_option autoImplicit false
open Seed0024ClusterTubeCover20261007 Seed0024ClusterTubeTable20261007
open Mub6.Numerical.ClusterTube48

namespace Seed0024ClusterTube20261007

def squareBallLower : ℕ → ℤ
  | 0 => 402573944
  | 1 => 400531927
  | 2 => 398465484
  | 3 => 397166746
  | 4 => 396450275
  | _ => 0

def squareBallDistance : ℕ → ℤ
  | 0 => 7987904
  | 1 => 41276654
  | 2 => 57921026
  | 3 => 66243212
  | 4 => 70404308
  | _ => 0

def ballLabelSum (table : SupplierTable) (s : Cell) (label : Fin 48) : ℤ × ℤ :=
  integerFiveSum 67108864 (ballLabelProducts table s label)

def squareBallLabelCheck (table : SupplierTable) (s : Cell) (label : Fin 48) : Bool :=
  decide (s.level≤4 ∧
    (squareBallLower s.level+37)*(squareBallLower s.level+37)≤
      integerPairSquare (ballLabelSum table s label))

theorem squareBallConstants_valid : ∀l : Fin 5,
    0≤squareBallLower l.val ∧ 0≤squareBallDistance l.val ∧
    36*(67108864:ℤ)^2-(squareBallLower l.val)^2≤(squareBallDistance l.val)^2 ∧
    (squareBallDistance l.val+6*ballLabelRadius ⟨l.val,fun _ => 0⟩)*27<30*67108864 := by
  decide +kernel

theorem squareBallConstants_for_cell (s : Cell) (hs : s.level≤4) :
    0≤squareBallLower s.level ∧ 0≤squareBallDistance s.level ∧
    36*(67108864:ℤ)^2-(squareBallLower s.level)^2≤(squareBallDistance s.level)^2 ∧
    (squareBallDistance s.level+6*ballLabelRadius s)*27<30*67108864 := by
  simpa only [ballLabelRadius,supplierHalfStep,denominator] using
    squareBallConstants_valid ⟨s.level,by omega⟩

theorem squareBallLabelCheck_floor_lower (table : SupplierTable) (s : Cell)
    (label : Fin 48) (hcheck : squareBallLabelCheck table s label=true) :
    squareBallLower s.level+37≤ballLabelNorm table s label := by
  have hh : s.level≤4 ∧
      (squareBallLower s.level+37)*(squareBallLower s.level+37)≤
        integerPairSquare (ballLabelSum table s label) := of_decide_eq_true hcheck
  have hnonneg := (squareBallConstants_for_cell s hh.1).1
  exact (pairFloor_ge_iff_square_le (ballLabelSum table s label)
    (squareBallLower s.level+37) (by omega)).2 hh.2

theorem squareBallLabelCheck_distance_bound (table : SupplierTable) (s : Cell)
    (label : Fin 48) (hcheck : squareBallLabelCheck table s label=true) :
    36*(67108864:ℝ)^2-(max 0 ((ballLabelNorm table s label:ℝ)-37))^2≤
      (squareBallDistance s.level:ℝ)^2 := by
  have hh : s.level≤4 ∧
      (squareBallLower s.level+37)*(squareBallLower s.level+37)≤
        integerPairSquare (ballLabelSum table s label) := of_decide_eq_true hcheck
  have hconst := squareBallConstants_for_cell s hh.1
  have hlower : (squareBallLower s.level:ℝ)+37≤(ballLabelNorm table s label:ℝ) := by
    exact_mod_cast squareBallLabelCheck_floor_lower table s label hcheck
  have hlo : (0:ℝ)≤(squareBallLower s.level:ℝ) := by exact_mod_cast hconst.1
  have hsq : 36*(67108864:ℝ)^2-(squareBallLower s.level:ℝ)^2≤
      (squareBallDistance s.level:ℝ)^2 := by exact_mod_cast hconst.2.2.1
  have hm : (squareBallLower s.level:ℝ)≤max 0 ((ballLabelNorm table s label:ℝ)-37) :=
    (by linarith : (squareBallLower s.level:ℝ)≤(ballLabelNorm table s label:ℝ)-37).trans
      (le_max_right _ _)
  have hsqmono := pow_le_pow_left₀ hlo hm 2
  nlinarith

theorem squareBallLabelCheck_sound (table : SupplierTable)
    (hTable : SupplierNeededTableSound table) (s : Cell)
    (label : Fin 48) (theta : Turns) (htheta : MemCell s theta)
    (hcheck : squareBallLabelCheck table s label=true) :
    centreProjectorLabel label (turnRay theta) := by
  have hh : s.level≤4 ∧
      (squareBallLower s.level+37)*(squareBallLower s.level+37)≤
        integerPairSquare (ballLabelSum table s label) := of_decide_eq_true hcheck
  have hconst := squareBallConstants_for_cell s hh.1
  let c : Fin 5 → ℂ := fun i => integerPairComplex (roundedCentreCoordinates label i)
  let t : Fin 5 → ℂ := fun i => integerPairComplex (leafMidpointEntry table s 0 i)
  let p : Fin 5 → ℂ := fun i => integerPairComplex (ballLabelProducts table s label i)
  have hc : ∀i,|(c i-(67108864:ℂ)*exactCentre label i.succ).re|<1 ∧
      |(c i-(67108864:ℂ)*exactCentre label i.succ).im|<1 := by
    intro i
    exact roundedCentre_complex_errors label i
  have ht : ∀i,|(t i-(67108864:ℂ)*circlePoint (2*Real.pi*cellMidpoint s i)).re|<1 ∧
      |(t i-(67108864:ℂ)*circlePoint (2*Real.pi*cellMidpoint s i)).im|<1 := by
    intro i
    simpa only [fourierTarget_zero] using scoped_leaf_midpoint_entry_errors table hTable s hh.1 0 i
  have hp : ∀i,|(p i).re-((c i).re*(t i).re+(c i).im*(t i).im)/67108864|<1 ∧
      |(p i).im-((c i).re*(t i).im-(c i).im*(t i).re)/67108864|<1 := by
    intro i
    exact integerConjProductQuotient_real_errors 67108864 (by norm_num)
      (roundedCentreCoordinates label i) (leafMidpointEntry table s 0 i)
  have hfloor : |(ballLabelNorm table s label:ℝ)-‖(67108864:ℂ)+∑i,p i‖|<1 := by
    simpa only [ballLabelNorm,Int.cast_ofNat] using
      integerFiveSum_floor_error 67108864 (ballLabelProducts table s label)
  have htestR : ((squareBallDistance s.level:ℝ)+6*(ballLabelRadius s:ℝ))*27<
      30*(67108864:ℝ) := by exact_mod_cast hconst.2.2.2
  exact supplier_rounded_exact_centre_label s (by omega) theta htheta label c t p
    67108864 (ballLabelNorm table s label:ℝ) (squareBallDistance s.level:ℝ)
    (ballLabelRadius s:ℝ) (by norm_num)
    (fun i => (hc i).1) (fun i => (hc i).2) (fun i => (ht i).1) (fun i => (ht i).2)
    (fun i => (hp i).1) (fun i => (hp i).2) hfloor
    (by exact_mod_cast hconst.2.1) (by exact_mod_cast ballLabelRadius_nonneg s)
    (squareBallLabelCheck_distance_bound table s label hcheck)
    (ballLabelRadius_bound s) htestR

end Seed0024ClusterTube20261007

#print axioms Seed0024ClusterTube20261007.squareBallConstants_valid
#print axioms Seed0024ClusterTube20261007.squareBallConstants_for_cell
#print axioms Seed0024ClusterTube20261007.squareBallLabelCheck_floor_lower
#print axioms Seed0024ClusterTube20261007.squareBallLabelCheck_distance_bound
#print axioms Seed0024ClusterTube20261007.squareBallLabelCheck_sound
