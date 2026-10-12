import NoFourMUBs.Step2.CriticalZero.ClearedMoments.Pair_p1_m2
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.Pair_p0_p2
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.Pair_p0_p3
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.Pair_p1_m3
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.Pair_p1_p2
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.Pair_p2_m2
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.Pair_p2_m3
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.Data_p2_m4
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.Pair_p2_m4
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.Pair_p2_p0
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.Pair_p2_p1
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.Data_p2_p2
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.Pair_p2_p2
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.Pair_p3_m1
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.Pair_p3_m2
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.Pair_p3_m3
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.Pair_p3_p0
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.Data_p4_m2
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.Pair_p4_m2
import NoFourMUBs.Step2.CriticalZero.ClearedMoments.ExistingPairs
import NoFourMUBs.Step2.CriticalZero.NonzeroOppositeCoefficients
import NoFourMUBs.Step2.CriticalZero.NonzeroCompactSide

/-! The existing involution supplies the other half of the cleared moment table.
This is a lookup/model adapter; it generates no polynomial coefficients. -/
set_option autoImplicit false
set_option maxHeartbeats 3000000
noncomputable section
namespace NoFourMUBs.Step2.Critical.NonzeroClearing
open CriticalMomentQuad20261003 CriticalNonzeroQuad20261003
open CriticalNonzeroLight20261003 CriticalNonzeroSumDenominator20261003
open CriticalNonzeroMoments20261003 CriticalNonzeroNumerator20261003 CriticalQuadProgram20261003

def representativeCoefficients (m : MomentTag) (X Y k : ℂ) :
    Quad (R2 X Y k) (R1 Y k) :=
  match m with
  | .p0_p2 => ⟨numerator_p0_p2_a X Y k / denominator_p0_p2_a X Y k,
      numerator_p0_p2_b X Y k / denominator_p0_p2_b X Y k⟩
  | .p0_p3 => ⟨numerator_p0_p3_a X Y k / denominator_p0_p3_a X Y k,
      numerator_p0_p3_b X Y k / denominator_p0_p3_b X Y k⟩
  | .p1_m2 => ⟨numerator_p1_m2_a X Y k / denominator_p1_m2_a X Y k,
      numerator_p1_m2_b X Y k / denominator_p1_m2_b X Y k⟩
  | .p1_m3 => ⟨numerator_p1_m3_a X Y k / denominator_p1_m3_a X Y k,
      numerator_p1_m3_b X Y k / denominator_p1_m3_b X Y k⟩
  | .p1_p1 => ⟨numerator_p1_p1_a X Y k / denominator_p1_p1_a X Y k,
      numerator_p1_p1_b X Y k / denominator_p1_p1_b X Y k⟩
  | .p1_p2 => ⟨numerator_p1_p2_a X Y k / denominator_p1_p2_a X Y k,
      numerator_p1_p2_b X Y k / denominator_p1_p2_b X Y k⟩
  | .p2_m1 => ⟨numerator_p2_m1_a X Y k / denominator_p2_m1_a X Y k,
      numerator_p2_m1_b X Y k / denominator_p2_m1_b X Y k⟩
  | .p2_m2 => ⟨numerator_p2_m2_a X Y k / denominator_p2_m2_a X Y k,
      numerator_p2_m2_b X Y k / denominator_p2_m2_b X Y k⟩
  | .p2_m3 => ⟨numerator_p2_m3_a X Y k / denominator_p2_m3_a X Y k,
      numerator_p2_m3_b X Y k / denominator_p2_m3_b X Y k⟩
  | .p2_m4 => ⟨numerator_p2_m4_a X Y k / denominator_p2_m4_a X Y k,
      numerator_p2_m4_b X Y k / denominator_p2_m4_b X Y k⟩
  | .p2_p0 => ⟨numerator_p2_p0_a X Y k / denominator_p2_p0_a X Y k,
      numerator_p2_p0_b X Y k / denominator_p2_p0_b X Y k⟩
  | .p2_p1 => ⟨numerator_p2_p1_a X Y k / denominator_p2_p1_a X Y k,
      numerator_p2_p1_b X Y k / denominator_p2_p1_b X Y k⟩
  | .p2_p2 => ⟨numerator_p2_p2_a X Y k / denominator_p2_p2_a X Y k,
      numerator_p2_p2_b X Y k / denominator_p2_p2_b X Y k⟩
  | .p3_m1 => ⟨numerator_p3_m1_a X Y k / denominator_p3_m1_a X Y k,
      numerator_p3_m1_b X Y k / denominator_p3_m1_b X Y k⟩
  | .p3_m2 => ⟨numerator_p3_m2_a X Y k / denominator_p3_m2_a X Y k,
      numerator_p3_m2_b X Y k / denominator_p3_m2_b X Y k⟩
  | .p3_m3 => ⟨numerator_p3_m3_a X Y k / denominator_p3_m3_a X Y k,
      numerator_p3_m3_b X Y k / denominator_p3_m3_b X Y k⟩
  | .p3_p0 => ⟨numerator_p3_p0_a X Y k / denominator_p3_p0_a X Y k,
      numerator_p3_p0_b X Y k / denominator_p3_p0_b X Y k⟩
  | .p4_m2 => ⟨numerator_p4_m2_a X Y k / denominator_p4_m2_a X Y k,
      numerator_p4_m2_b X Y k / denominator_p4_m2_b X Y k⟩
  | _ => 0

def reflectedCoefficients (m : MomentTag) (X Y k : ℂ) :
    Quad (R2 X Y k) (R1 Y k) :=
  let u := representativeCoefficients m X Y k
  let w := X^(degrees m).1 * Y^(degrees m).2
  ⟨w*(u.a + R1 Y k*u.b), -(w*u.b)⟩

def rationalCoefficients (m : MomentTag) (X Y k : ℂ) :
    Quad (R2 X Y k) (R1 Y k) :=
  match m with
  | .p0_m2 => reflectedCoefficients .p0_p2 X Y k
  | .p0_m3 => reflectedCoefficients .p0_p3 X Y k
  | .m1_p2 => reflectedCoefficients .p1_m2 X Y k
  | .m1_p3 => reflectedCoefficients .p1_m3 X Y k
  | .m1_m1 => reflectedCoefficients .p1_p1 X Y k
  | .m1_m2 => reflectedCoefficients .p1_p2 X Y k
  | .m2_p1 => reflectedCoefficients .p2_m1 X Y k
  | .m2_p2 => reflectedCoefficients .p2_m2 X Y k
  | .m2_p3 => reflectedCoefficients .p2_m3 X Y k
  | .m2_p4 => reflectedCoefficients .p2_m4 X Y k
  | .m2_p0 => reflectedCoefficients .p2_p0 X Y k
  | .m2_m1 => reflectedCoefficients .p2_p1 X Y k
  | .m2_m2 => reflectedCoefficients .p2_p2 X Y k
  | .m3_p1 => reflectedCoefficients .p3_m1 X Y k
  | .m3_p2 => reflectedCoefficients .p3_m2 X Y k
  | .m3_p3 => reflectedCoefficients .p3_m3 X Y k
  | .m3_p0 => reflectedCoefficients .p3_p0 X Y k
  | .m4_p2 => reflectedCoefficients .p4_m2 X Y k
  | _ => representativeCoefficients m X Y k

theorem pairedCoefficient_eq_rationalCoefficients (X Y k : ℂ)
    (hX : X ≠ 0) (hY : Y ≠ 0) (hh : h k ≠ 0)
    (hXp : pole k 1 X ≠ 0) (hXm : pole k (-1) X ≠ 0)
    (hYp : pole k 1 Y ≠ 0) (hYm : pole k (-1) Y ≠ 0)
    (hZp : pole k 1 (p k-X-Y) ≠ 0) (hZm : pole k (-1) (p k-X-Y) ≠ 0)
    (m : MomentTag) : pairedCoefficient m X Y k = rationalCoefficients m X Y k := by
  have hs : (h k)^2/(2 : ℂ) ≠ 0 :=
    div_ne_zero (pow_ne_zero 2 hh) (by norm_num)
  have hFXp : plusFactor X k ≠ 0 := by
    rw [plusFactor_pole X k hh]
    exact mul_ne_zero hs hXp
  have hFXm : minusFactor X k ≠ 0 := by
    rw [minusFactor_pole X k hh]
    exact mul_ne_zero (neg_ne_zero.mpr hs) hXm
  have hFYp : plusFactor Y k ≠ 0 := by
    rw [plusFactor_pole Y k hh]
    exact mul_ne_zero hs hYp
  have hFYm : minusFactor Y k ≠ 0 := by
    rw [minusFactor_pole Y k hh]
    exact mul_ne_zero (neg_ne_zero.mpr hs) hYm
  have hFZp : thirdPlusFactor X Y k ≠ 0 := by
    rw [thirdPlusFactor_pole X Y k hh]
    exact mul_ne_zero (neg_ne_zero.mpr hs) hZp
  have hFZm : thirdMinusFactor X Y k ≠ 0 := by
    rw [thirdMinusFactor_pole X Y k hh]
    exact mul_ne_zero hs hZm
  have recover (u : Quad (R2 X Y k) (R1 Y k)) (a b d e : ℂ)
      (hd : d ≠ 0) (he : e ≠ 0) (hu : u.a*d=a ∧ u.b*e=b) :
      u = ⟨a/d, b/e⟩ := by
    exact congrArg₂ (fun a b => (⟨a,b⟩ : Quad (R2 X Y k) (R1 Y k)))
      ((eq_div_iff hd).mpr hu.1) ((eq_div_iff he).mpr hu.2)
  have h_p0_p2 : pairedCoefficient .p0_p2 X Y k =
      representativeCoefficients .p0_p2 X Y k := by
    apply recover (pairedQuad_p0_p2 X Y k)
      (numerator_p0_p2_a X Y k) (numerator_p0_p2_b X Y k)
      (denominator_p0_p2_a X Y k) (denominator_p0_p2_b X Y k)
    · dsimp only [denominator_p0_p2_a]
      exact (mul_ne_zero (mul_ne_zero (mul_ne_zero (mul_ne_zero hY hFXm) hFZm) hFXp) hFZp)
    · dsimp only [denominator_p0_p2_b]
      exact (mul_ne_zero (mul_ne_zero (mul_ne_zero (mul_ne_zero hY hFXm) hFZm) hFXp) hFZp)
    · exact cleared_p0_p2 X Y k hX hY hh hXp hXm hYp hYm hZp hZm
  have h_p0_p3 : pairedCoefficient .p0_p3 X Y k =
      representativeCoefficients .p0_p3 X Y k := by
    apply recover (pairedQuad_p0_p3 X Y k)
      (numerator_p0_p3_a X Y k) (numerator_p0_p3_b X Y k)
      (denominator_p0_p3_a X Y k) (denominator_p0_p3_b X Y k)
    · dsimp only [denominator_p0_p3_a]
      exact (mul_ne_zero (mul_ne_zero (mul_ne_zero (mul_ne_zero hFXm hFZm) hFXp) hFZp) (pow_ne_zero 2 hY))
    · dsimp only [denominator_p0_p3_b]
      exact (mul_ne_zero (mul_ne_zero (mul_ne_zero (mul_ne_zero hFXm hFZm) hFXp) hFZp) (pow_ne_zero 2 hY))
    · exact cleared_p0_p3 X Y k hX hY hh hXp hXm hYp hYm hZp hZm
  have h_p1_m2 : pairedCoefficient .p1_m2 X Y k =
      representativeCoefficients .p1_m2 X Y k := by
    apply recover (pairedQuad_p1_m2 X Y k)
      (numerator_p1_m2_a X Y k) (numerator_p1_m2_b X Y k)
      (denominator_p1_m2_a X Y k) (denominator_p1_m2_b X Y k)
    · dsimp only [denominator_p1_m2_a]
      exact (mul_ne_zero (mul_ne_zero (mul_ne_zero hX hFXm) hFXp) (pow_ne_zero 3 hh))
    · dsimp only [denominator_p1_m2_b]
      exact (mul_ne_zero (mul_ne_zero (mul_ne_zero hh hX) hFXm) hFXp)
    · exact cleared_p1_m2 X Y k hX hY hh hXp hXm
  have h_p1_m3 : pairedCoefficient .p1_m3 X Y k =
      representativeCoefficients .p1_m3 X Y k := by
    apply recover (pairedQuad_p1_m3 X Y k)
      (numerator_p1_m3_a X Y k) (numerator_p1_m3_b X Y k)
      (denominator_p1_m3_a X Y k) (denominator_p1_m3_b X Y k)
    · dsimp only [denominator_p1_m3_a]
      exact (mul_ne_zero (mul_ne_zero (mul_ne_zero (mul_ne_zero (mul_ne_zero hX hFXm) hFZm) hFXp) hFZp) (pow_ne_zero 3 hh))
    · dsimp only [denominator_p1_m3_b]
      exact (mul_ne_zero (mul_ne_zero (mul_ne_zero (mul_ne_zero (mul_ne_zero hh hX) hFXm) hFZm) hFXp) hFZp)
    · exact cleared_p1_m3 X Y k hX hY hh hXp hXm hYp hYm hZp hZm
  have h_p1_p1 : pairedCoefficient .p1_p1 X Y k =
      representativeCoefficients .p1_p1 X Y k := by
    apply recover (pairedQuad_p1_p1 X Y k)
      (numerator_p1_p1_a X Y k) (numerator_p1_p1_b X Y k)
      (denominator_p1_p1_a X Y k) (denominator_p1_p1_b X Y k)
    · dsimp only [denominator_p1_p1_a]
      exact (mul_ne_zero (mul_ne_zero (mul_ne_zero hh hX) hFZm) hFZp)
    · dsimp only [denominator_p1_p1_b]
      exact (mul_ne_zero (mul_ne_zero hX hFZm) hFZp)
    · exact cleared_p1_p1 X Y k hX hh hZp hZm
  have h_p1_p2 : pairedCoefficient .p1_p2 X Y k =
      representativeCoefficients .p1_p2 X Y k := by
    apply recover (pairedQuad_p1_p2 X Y k)
      (numerator_p1_p2_a X Y k) (numerator_p1_p2_b X Y k)
      (denominator_p1_p2_a X Y k) (denominator_p1_p2_b X Y k)
    · dsimp only [denominator_p1_p2_a]
      exact (mul_ne_zero (mul_ne_zero (mul_ne_zero (mul_ne_zero (mul_ne_zero (mul_ne_zero hh hY) hX) hFXm) hFZm) hFXp) hFZp)
    · dsimp only [denominator_p1_p2_b]
      exact (mul_ne_zero (mul_ne_zero (mul_ne_zero (mul_ne_zero (mul_ne_zero hY hX) hFXm) hFZm) hFXp) hFZp)
    · exact cleared_p1_p2 X Y k hX hY hh hXp hXm hYp hYm hZp hZm
  have h_p2_m1 : pairedCoefficient .p2_m1 X Y k =
      representativeCoefficients .p2_m1 X Y k := by
    apply recover (pairedQuad_p2_m1 X Y k)
      (numerator_p2_m1_a X Y k) (numerator_p2_m1_b X Y k)
      (denominator_p2_m1_a X Y k) (denominator_p2_m1_b X Y k)
    · dsimp only [denominator_p2_m1_a]
      exact (mul_ne_zero (mul_ne_zero (mul_ne_zero hFYm hFYp) (pow_ne_zero 2 hX)) (pow_ne_zero 3 hh))
    · dsimp only [denominator_p2_m1_b]
      exact (mul_ne_zero (mul_ne_zero (mul_ne_zero hh hFYm) hFYp) (pow_ne_zero 2 hX))
    · exact cleared_p2_m1 X Y k hX hY hh hYp hYm
  have h_p2_m2 : pairedCoefficient .p2_m2 X Y k =
      representativeCoefficients .p2_m2 X Y k := by
    apply recover (pairedQuad_p2_m2 X Y k)
      (numerator_p2_m2_a X Y k) (numerator_p2_m2_b X Y k)
      (denominator_p2_m2_a X Y k) (denominator_p2_m2_b X Y k)
    · dsimp only [denominator_p2_m2_a]
      exact (mul_ne_zero (mul_ne_zero (mul_ne_zero (mul_ne_zero (mul_ne_zero hFYm hFYp) hFXm) hFXp) (pow_ne_zero 2 hX)) (pow_ne_zero 4 hh))
    · dsimp only [denominator_p2_m2_b]
      exact (mul_ne_zero (mul_ne_zero (mul_ne_zero (mul_ne_zero (mul_ne_zero hFYm hFYp) hFXm) hFXp) (pow_ne_zero 2 hh)) (pow_ne_zero 2 hX))
    · exact cleared_p2_m2 X Y k hX hY hh hXp hXm hYp hYm hZp hZm
  have h_p2_m3 : pairedCoefficient .p2_m3 X Y k =
      representativeCoefficients .p2_m3 X Y k := by
    apply recover (pairedQuad_p2_m3 X Y k)
      (numerator_p2_m3_a X Y k) (numerator_p2_m3_b X Y k)
      (denominator_p2_m3_a X Y k) (denominator_p2_m3_b X Y k)
    · dsimp only [denominator_p2_m3_a]
      exact (mul_ne_zero (mul_ne_zero (mul_ne_zero (mul_ne_zero (mul_ne_zero hFYm hFYp) hFXm) hFXp) (pow_ne_zero 2 hX)) (pow_ne_zero 5 hh))
    · dsimp only [denominator_p2_m3_b]
      exact (mul_ne_zero (mul_ne_zero (mul_ne_zero (mul_ne_zero (mul_ne_zero hFYm hFYp) hFXm) hFXp) (pow_ne_zero 2 hX)) (pow_ne_zero 3 hh))
    · exact cleared_p2_m3 X Y k hX hY hh hXp hXm hYp hYm hZp hZm
  have h_p2_m4 : pairedCoefficient .p2_m4 X Y k =
      representativeCoefficients .p2_m4 X Y k := by
    apply recover (pairedQuad_p2_m4 X Y k)
      (numerator_p2_m4_a X Y k) (numerator_p2_m4_b X Y k)
      (denominator_p2_m4_a X Y k) (denominator_p2_m4_b X Y k)
    · dsimp only [denominator_p2_m4_a]
      exact (mul_ne_zero (mul_ne_zero (mul_ne_zero (mul_ne_zero (mul_ne_zero (mul_ne_zero (mul_ne_zero hFYm hFYp) hFZm) hFZp) (pow_ne_zero 2 hX)) (pow_ne_zero 3 hFXm)) (pow_ne_zero 3 hFXp)) (pow_ne_zero 5 hh))
    · dsimp only [denominator_p2_m4_b]
      exact (mul_ne_zero (mul_ne_zero (mul_ne_zero (mul_ne_zero (mul_ne_zero (mul_ne_zero (mul_ne_zero hFYm hFYp) hFZm) hFZp) (pow_ne_zero 2 hX)) (pow_ne_zero 3 hh)) (pow_ne_zero 3 hFXm)) (pow_ne_zero 3 hFXp))
    · exact cleared_p2_m4 X Y k hX hY hh hXp hXm hYp hYm hZp hZm
  have h_p2_p0 : pairedCoefficient .p2_p0 X Y k =
      representativeCoefficients .p2_p0 X Y k := by
    apply recover (pairedQuad_p2_p0 X Y k)
      (numerator_p2_p0_a X Y k) (numerator_p2_p0_b X Y k)
      (denominator_p2_p0_a X Y k) (denominator_p2_p0_b X Y k)
    · dsimp only [denominator_p2_p0_a]
      exact (mul_ne_zero (mul_ne_zero (mul_ne_zero (mul_ne_zero (mul_ne_zero hFYm hFYp) hFZm) hFZp) (pow_ne_zero 2 hh)) (pow_ne_zero 2 hX))
    · dsimp only [denominator_p2_p0_b]
      exact (mul_ne_zero (mul_ne_zero (mul_ne_zero (mul_ne_zero hFYm hFYp) hFZm) hFZp) (pow_ne_zero 2 hX))
    · exact cleared_p2_p0 X Y k hX hY hh hXp hXm hYp hYm hZp hZm
  have h_p2_p1 : pairedCoefficient .p2_p1 X Y k =
      representativeCoefficients .p2_p1 X Y k := by
    apply recover (pairedQuad_p2_p1 X Y k)
      (numerator_p2_p1_a X Y k) (numerator_p2_p1_b X Y k)
      (denominator_p2_p1_a X Y k) (denominator_p2_p1_b X Y k)
    · dsimp only [denominator_p2_p1_a]
      exact (mul_ne_zero (mul_ne_zero (mul_ne_zero (mul_ne_zero (mul_ne_zero hh hFYm) hFYp) hFZm) hFZp) (pow_ne_zero 2 hX))
    · dsimp only [denominator_p2_p1_b]
      exact (mul_ne_zero (mul_ne_zero (mul_ne_zero (mul_ne_zero hFYm hFYp) hFZm) hFZp) (pow_ne_zero 2 hX))
    · exact cleared_p2_p1 X Y k hX hY hh hXp hXm hYp hYm hZp hZm
  have h_p2_p2 : pairedCoefficient .p2_p2 X Y k =
      representativeCoefficients .p2_p2 X Y k := by
    apply recover (pairedQuad_p2_p2 X Y k)
      (numerator_p2_p2_a X Y k) (numerator_p2_p2_b X Y k)
      (denominator_p2_p2_a X Y k) (denominator_p2_p2_b X Y k)
    · dsimp only [denominator_p2_p2_a]
      exact (mul_ne_zero (mul_ne_zero (mul_ne_zero (mul_ne_zero (mul_ne_zero (mul_ne_zero (mul_ne_zero (mul_ne_zero hh hY) hFYm) hFYp) hFXm) hFXp) (pow_ne_zero 2 hX)) (pow_ne_zero 3 hFZm)) (pow_ne_zero 3 hFZp))
    · dsimp only [denominator_p2_p2_b]
      exact (mul_ne_zero (mul_ne_zero (mul_ne_zero (mul_ne_zero (mul_ne_zero (mul_ne_zero (mul_ne_zero hY hFYm) hFYp) hFXm) hFXp) (pow_ne_zero 2 hX)) (pow_ne_zero 3 hFZm)) (pow_ne_zero 3 hFZp))
    · exact cleared_p2_p2 X Y k hX hY hh hXp hXm hYp hYm hZp hZm
  have h_p3_m1 : pairedCoefficient .p3_m1 X Y k =
      representativeCoefficients .p3_m1 X Y k := by
    apply recover (pairedQuad_p3_m1 X Y k)
      (numerator_p3_m1_a X Y k) (numerator_p3_m1_b X Y k)
      (denominator_p3_m1_a X Y k) (denominator_p3_m1_b X Y k)
    · dsimp only [denominator_p3_m1_a]
      exact (mul_ne_zero (mul_ne_zero (mul_ne_zero (mul_ne_zero (mul_ne_zero hFYm hFYp) hFZm) hFZp) (pow_ne_zero 3 hh)) (pow_ne_zero 3 hX))
    · dsimp only [denominator_p3_m1_b]
      exact (mul_ne_zero (mul_ne_zero (mul_ne_zero (mul_ne_zero (mul_ne_zero hh hFYm) hFYp) hFZm) hFZp) (pow_ne_zero 3 hX))
    · exact cleared_p3_m1 X Y k hX hY hh hXp hXm hYp hYm hZp hZm
  have h_p3_m2 : pairedCoefficient .p3_m2 X Y k =
      representativeCoefficients .p3_m2 X Y k := by
    apply recover (pairedQuad_p3_m2 X Y k)
      (numerator_p3_m2_a X Y k) (numerator_p3_m2_b X Y k)
      (denominator_p3_m2_a X Y k) (denominator_p3_m2_b X Y k)
    · dsimp only [denominator_p3_m2_a]
      exact (mul_ne_zero (mul_ne_zero (mul_ne_zero (mul_ne_zero (mul_ne_zero hFYm hFYp) hFXm) hFXp) (pow_ne_zero 3 hX)) (pow_ne_zero 5 hh))
    · dsimp only [denominator_p3_m2_b]
      exact (mul_ne_zero (mul_ne_zero (mul_ne_zero (mul_ne_zero (mul_ne_zero hFYm hFYp) hFXm) hFXp) (pow_ne_zero 3 hh)) (pow_ne_zero 3 hX))
    · exact cleared_p3_m2 X Y k hX hY hh hXp hXm hYp hYm hZp hZm
  have h_p3_m3 : pairedCoefficient .p3_m3 X Y k =
      representativeCoefficients .p3_m3 X Y k := by
    apply recover (pairedQuad_p3_m3 X Y k)
      (numerator_p3_m3_a X Y k) (numerator_p3_m3_b X Y k)
      (denominator_p3_m3_a X Y k) (denominator_p3_m3_b X Y k)
    · dsimp only [denominator_p3_m3_a]
      exact (mul_ne_zero (mul_ne_zero (mul_ne_zero (mul_ne_zero (mul_ne_zero hFYm hFYp) hFXm) hFXp) (pow_ne_zero 3 hX)) (pow_ne_zero 5 hh))
    · dsimp only [denominator_p3_m3_b]
      exact (mul_ne_zero (mul_ne_zero (mul_ne_zero (mul_ne_zero (mul_ne_zero hFYm hFYp) hFXm) hFXp) (pow_ne_zero 3 hh)) (pow_ne_zero 3 hX))
    · exact cleared_p3_m3 X Y k hX hY hh hXp hXm hYp hYm hZp hZm
  have h_p3_p0 : pairedCoefficient .p3_p0 X Y k =
      representativeCoefficients .p3_p0 X Y k := by
    apply recover (pairedQuad_p3_p0 X Y k)
      (numerator_p3_p0_a X Y k) (numerator_p3_p0_b X Y k)
      (denominator_p3_p0_a X Y k) (denominator_p3_p0_b X Y k)
    · dsimp only [denominator_p3_p0_a]
      exact (mul_ne_zero (mul_ne_zero (mul_ne_zero (mul_ne_zero (mul_ne_zero hh hFYm) hFYp) hFZm) hFZp) (pow_ne_zero 3 hX))
    · dsimp only [denominator_p3_p0_b]
      exact (mul_ne_zero (mul_ne_zero (mul_ne_zero (mul_ne_zero hFYm hFYp) hFZm) hFZp) (pow_ne_zero 3 hX))
    · exact cleared_p3_p0 X Y k hX hY hh hXp hXm hYp hYm hZp hZm
  have h_p4_m2 : pairedCoefficient .p4_m2 X Y k =
      representativeCoefficients .p4_m2 X Y k := by
    apply recover (pairedQuad_p4_m2 X Y k)
      (numerator_p4_m2_a X Y k) (numerator_p4_m2_b X Y k)
      (denominator_p4_m2_a X Y k) (denominator_p4_m2_b X Y k)
    · dsimp only [denominator_p4_m2_a]
      exact (mul_ne_zero (mul_ne_zero (mul_ne_zero (mul_ne_zero (mul_ne_zero (mul_ne_zero (mul_ne_zero hFXm hFZm) hFXp) hFZp) (pow_ne_zero 3 hFYm)) (pow_ne_zero 3 hFYp)) (pow_ne_zero 4 hX)) (pow_ne_zero 5 hh))
    · dsimp only [denominator_p4_m2_b]
      exact (mul_ne_zero (mul_ne_zero (mul_ne_zero (mul_ne_zero (mul_ne_zero (mul_ne_zero (mul_ne_zero hFXm hFZm) hFXp) hFZp) (pow_ne_zero 3 hh)) (pow_ne_zero 3 hFYm)) (pow_ne_zero 3 hFYp)) (pow_ne_zero 4 hX))
    · exact cleared_p4_m2 X Y k hX hY hh hXp hXm hYp hYm hZp hZm
  have reflect (m : MomentTag)
      (hu : pairedCoefficient m X Y k = representativeCoefficients m X Y k) :
      pairedCoefficient (opposite m) X Y k = reflectedCoefficients m X Y k := by
    simpa only [hu, reflectedCoefficients] using
      pairedCoefficient_opposite_coefficients X Y k hX hY m
  cases m with
  | p0_p2 => exact h_p0_p2
  | p0_m2 => exact reflect .p0_p2 h_p0_p2
  | p0_p3 => exact h_p0_p3
  | p0_m3 => exact reflect .p0_p3 h_p0_p3
  | p1_m2 => exact h_p1_m2
  | m1_p2 => exact reflect .p1_m2 h_p1_m2
  | p1_m3 => exact h_p1_m3
  | m1_p3 => exact reflect .p1_m3 h_p1_m3
  | p1_p1 => exact h_p1_p1
  | m1_m1 => exact reflect .p1_p1 h_p1_p1
  | p1_p2 => exact h_p1_p2
  | m1_m2 => exact reflect .p1_p2 h_p1_p2
  | p2_m1 => exact h_p2_m1
  | m2_p1 => exact reflect .p2_m1 h_p2_m1
  | p2_m2 => exact h_p2_m2
  | m2_p2 => exact reflect .p2_m2 h_p2_m2
  | p2_m3 => exact h_p2_m3
  | m2_p3 => exact reflect .p2_m3 h_p2_m3
  | p2_m4 => exact h_p2_m4
  | m2_p4 => exact reflect .p2_m4 h_p2_m4
  | p2_p0 => exact h_p2_p0
  | m2_p0 => exact reflect .p2_p0 h_p2_p0
  | p2_p1 => exact h_p2_p1
  | m2_m1 => exact reflect .p2_p1 h_p2_p1
  | p2_p2 => exact h_p2_p2
  | m2_m2 => exact reflect .p2_p2 h_p2_p2
  | p3_m1 => exact h_p3_m1
  | m3_p1 => exact reflect .p3_m1 h_p3_m1
  | p3_m2 => exact h_p3_m2
  | m3_p2 => exact reflect .p3_m2 h_p3_m2
  | p3_m3 => exact h_p3_m3
  | m3_p3 => exact reflect .p3_m3 h_p3_m3
  | p3_p0 => exact h_p3_p0
  | m3_p0 => exact reflect .p3_p0 h_p3_p0
  | p4_m2 => exact h_p4_m2
  | m4_p2 => exact reflect .p4_m2 h_p4_m2

theorem sumCoefficients_via_rationalTable (X Y k : ℂ)
    (hX : X ≠ 0) (hY : Y ≠ 0) (hh : h k ≠ 0)
    (hXp : pole k 1 X ≠ 0) (hXm : pole k (-1) X ≠ 0)
    (hYp : pole k 1 Y ≠ 0) (hYm : pole k (-1) Y ≠ 0)
    (hZp : pole k 1 (p k-X-Y) ≠ 0) (hZm : pole k (-1) (p k-X-Y) ≠ 0) :
    sumCoefficients X Y k = coefficients (fun m => rationalCoefficients m X Y k) program66 := by
  unfold sumCoefficients
  have ht : (fun m => pairedCoefficient m X Y k) =
      (fun m => rationalCoefficients m X Y k) := by
    funext m
    exact pairedCoefficient_eq_rationalCoefficients X Y k hX hY hh hXp hXm hYp hYm hZp hZm m
  rw [ht]

#print axioms pairedCoefficient_eq_rationalCoefficients
#print axioms sumCoefficients_via_rationalTable
end NoFourMUBs.Step2.Critical.NonzeroClearing
