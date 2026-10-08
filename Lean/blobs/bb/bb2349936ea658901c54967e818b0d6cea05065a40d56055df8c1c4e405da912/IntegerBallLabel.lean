import SupplierBallInclusion
import ScopedSupplierLeafEntries
import RoundedCentreData
import IntegerRootCeil

/-! The exact integer label predicate: table lookup, five conjugate-product
quotients, integer norm floor, margin37, ceiling root and ceiling radius.
All arithmetic contracts are discharged by checked integer lemmas. The
remaining premise is accuracy only at the needed120-multiple table indices.
Acceptance explicitly requires level≤4; it does not shrink the continuous
phase domain or assert acceptance of any finite forest. -/
set_option autoImplicit false
open Seed0024ClusterTubeCover20261007 Seed0024ClusterTubeTable20261007
open Mub6.Numerical.ClusterTube48

namespace Seed0024ClusterTube20261007

def ballLabelProducts (table : SupplierTable) (s : Cell) (label : Fin 48)
    (i : Fin 5) : ℤ × ℤ :=
  integerConjProductQuotient 67108864 (roundedCentreCoordinates label i)
    (leafMidpointEntry table s 0 i)

def ballLabelNorm (table : SupplierTable) (s : Cell) (label : Fin 48) : ℤ :=
  integerPairNormFloor (integerFiveSum 67108864 (ballLabelProducts table s label))

def ballLabelLower (table : SupplierTable) (s : Cell) (label : Fin 48) : ℤ :=
  max 0 (ballLabelNorm table s label-37)

def ballLabelDistance (table : SupplierTable) (s : Cell) (label : Fin 48) : ℤ :=
  naturalRootCeil ((36*(67108864:ℤ)^2-(ballLabelLower table s label)^2).toNat)

def ballLabelRadius (s : Cell) : ℤ :=
  integerCeilDiv (710*67108864*(supplierHalfStep s:ℤ)) (113*218880)

def ballLabelCheck (table : SupplierTable) (s : Cell) (label : Fin 48) : Bool :=
  decide (s.level≤4 ∧ ballLabelLower table s label≤6*67108864 ∧
    (ballLabelDistance table s label+6*ballLabelRadius s)*27<30*67108864)

theorem naturalRootCeil_toNat_sq_bound (x : ℤ) :
    (x:ℝ)≤(naturalRootCeil x.toNat:ℝ)^2 := by
  have hx : (x:ℝ)≤(x.toNat:ℝ) := by
    by_cases h : 0≤x
    · have he : (x.toNat:ℤ)=x := Int.toNat_of_nonneg h
      have he' : (x.toNat:ℝ)=(x:ℝ) := by exact_mod_cast he
      exact he'.symm.le
    · have hn : (x:ℝ)≤0 := by exact_mod_cast (le_of_lt (lt_of_not_ge h))
      exact hn.trans (by positivity)
  have hr := (naturalRootCeil_real_bounds x.toNat).1
  have hn := naturalRootCeil_real_nonneg x.toNat
  have hs := Real.sq_sqrt (show (0:ℝ)≤(x.toNat:ℝ) by positivity)
  have hsn := Real.sqrt_nonneg (x.toNat:ℝ)
  nlinarith

theorem ballLabelLower_cast (table : SupplierTable) (s : Cell) (label : Fin 48) :
    (ballLabelLower table s label:ℝ)=max 0 ((ballLabelNorm table s label:ℝ)-37) := by
  unfold ballLabelLower
  by_cases h : 0≤ballLabelNorm table s label-37
  · have hr : (0:ℝ)≤(ballLabelNorm table s label:ℝ)-37 := by exact_mod_cast h
    rw [max_eq_right h,max_eq_right hr]
    simp only [Int.cast_sub,Int.cast_ofNat]
  · have hn : ballLabelNorm table s label-37≤0 := le_of_lt (lt_of_not_ge h)
    have hr : (ballLabelNorm table s label:ℝ)-37≤0 := by exact_mod_cast hn
    rw [max_eq_left hn,max_eq_left hr]
    norm_num

theorem ballLabelDistance_nonneg (table : SupplierTable) (s : Cell) (label : Fin 48) :
    0≤ballLabelDistance table s label := by unfold ballLabelDistance; positivity

theorem ballLabelDistance_sq_bound (table : SupplierTable) (s : Cell) (label : Fin 48) :
    36*(67108864:ℝ)^2-(max 0 ((ballLabelNorm table s label:ℝ)-37))^2≤
      (ballLabelDistance table s label:ℝ)^2 := by
  have h := naturalRootCeil_toNat_sq_bound
    (36*(67108864:ℤ)^2-(ballLabelLower table s label)^2)
  simpa only [ballLabelDistance,Int.cast_sub,Int.cast_mul,Int.cast_pow,
    Int.cast_ofNat,Int.cast_natCast,ballLabelLower_cast] using h

theorem ballLabelRadius_nonneg (s : Cell) : 0≤ballLabelRadius s :=
  integerCeilDiv_nonneg _ _ (by positivity) (by norm_num)

theorem ballLabelRadius_bound (s : Cell) :
    710*(67108864:ℝ)*(supplierHalfStep s:ℝ)/(113*218880)≤(ballLabelRadius s:ℝ) := by
  have h := (integerCeilDiv_real_bounds
    (710*67108864*(supplierHalfStep s:ℤ)) (113*218880) (by positivity) (by norm_num)).1
  simpa only [ballLabelRadius,Int.cast_mul,Int.cast_natCast,Int.cast_ofNat] using h

/-- The native lower-overlap assertion is included as a fail-closed check,
so the integer-to-natural root input never clips a negative accepted radicand. -/
theorem ballLabelCheck_radicand_nonneg (table : SupplierTable) (s : Cell) (label : Fin 48)
    (hcheck : ballLabelCheck table s label=true) :
    0≤36*(67108864:ℤ)^2-(ballLabelLower table s label)^2 := by
  have hh : s.level≤4 ∧ ballLabelLower table s label≤6*67108864 ∧
      (ballLabelDistance table s label+6*ballLabelRadius s)*27<30*67108864 :=
    of_decide_eq_true hcheck
  have hn : 0≤ballLabelLower table s label := le_max_left _ _
  nlinarith [hh.2.1]

theorem ballLabelCheck_sound (table : SupplierTable)
    (hTable : SupplierNeededTableSound table) (s : Cell)
    (label : Fin 48) (theta : Turns) (htheta : MemCell s theta)
    (hcheck : ballLabelCheck table s label=true) :
    centreProjectorLabel label (turnRay theta) := by
  have hh : s.level≤4 ∧ ballLabelLower table s label≤6*67108864 ∧
      (ballLabelDistance table s label+6*ballLabelRadius s)*27<30*67108864 :=
    of_decide_eq_true hcheck
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
  have htest := hh.2.2
  have htestR : ((ballLabelDistance table s label:ℝ)+6*(ballLabelRadius s:ℝ))*27<
      30*(67108864:ℝ) := by exact_mod_cast htest
  exact supplier_rounded_exact_centre_label s (by omega) theta htheta label c t p
    67108864 (ballLabelNorm table s label:ℝ) (ballLabelDistance table s label:ℝ)
    (ballLabelRadius s:ℝ) (by norm_num)
    (fun i => (hc i).1) (fun i => (hc i).2) (fun i => (ht i).1) (fun i => (ht i).2)
    (fun i => (hp i).1) (fun i => (hp i).2) hfloor
    (by exact_mod_cast ballLabelDistance_nonneg table s label)
    (by exact_mod_cast ballLabelRadius_nonneg s)
    (ballLabelDistance_sq_bound table s label) (ballLabelRadius_bound s) htestR

end Seed0024ClusterTube20261007

#print axioms Seed0024ClusterTube20261007.naturalRootCeil_toNat_sq_bound
#print axioms Seed0024ClusterTube20261007.ballLabelLower_cast
#print axioms Seed0024ClusterTube20261007.ballLabelDistance_nonneg
#print axioms Seed0024ClusterTube20261007.ballLabelDistance_sq_bound
#print axioms Seed0024ClusterTube20261007.ballLabelRadius_nonneg
#print axioms Seed0024ClusterTube20261007.ballLabelRadius_bound
#print axioms Seed0024ClusterTube20261007.ballLabelCheck_radicand_nonneg
#print axioms Seed0024ClusterTube20261007.ballLabelCheck_sound
