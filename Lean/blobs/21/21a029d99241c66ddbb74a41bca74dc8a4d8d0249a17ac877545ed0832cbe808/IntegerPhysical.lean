import IntegerIntervals

namespace Mub6.Numerical.IntegerIntervals
open scoped BigOperators

def toRectangle (S : ℕ) (a : ZBox) : RationalRectangle :=
  ⟨(a.re.lo : ℚ) / S, (a.re.hi : ℚ) / S,
   (a.im.lo : ℚ) / S, (a.im.hi : ℚ) / S⟩
def toRawRayBox (S : ℕ) (q : ZRayBox) : RawRayBox := fun j => toRectangle S (q j)
def toCarrier (S : ℕ) (E : ZCarrier) : CarrierRegion := fun r k => toRectangle S (E r k)
def MemRayBox (S : ℕ) (q : ZRayBox) (z : Vector) : Prop :=
  z 0 = 1 ∧ ∀ j : Fin 5, MemBox (q j) ((S : ℂ) * z j.succ)

theorem mem_toRectangle_iff {S : ℕ} (hS : 0 < S) (a : ZBox) (z : ℂ) :
    MemRectangle (toRectangle S a) z ↔ MemBox a ((S : ℂ) * z) := by
  have hs : (0 : ℝ) < S := by exact_mod_cast hS
  simp only [MemRectangle, toRectangle, Rat.cast_div, Rat.cast_intCast, Rat.cast_natCast,
    MemBox, Mem, Complex.mul_re, Complex.mul_im, Complex.natCast_re, Complex.natCast_im,
    zero_mul, sub_zero, zero_add, add_zero]
  rw [div_le_iff₀ hs, le_div_iff₀ hs, div_le_iff₀ hs, le_div_iff₀ hs]
  simp only [mul_comm]
  tauto

theorem mem_toRawRayBox_iff {S : ℕ} (hS : 0 < S) (q : ZRayBox) (z : Vector) :
    MemRawRayBox (toRawRayBox S q) z ↔ MemRayBox S q z := by
  simp only [MemRawRayBox, MemRayBox, toRawRayBox, mem_toRectangle_iff hS]

def extendRayBox (S : ℕ) (q : ZRayBox) : Fin 6 → ZBox :=
  Fin.cases (boxPoint S 0) q

theorem mem_extendRayBox {S : ℕ} {q : ZRayBox} {z : Vector} (hz : MemRayBox S q z) :
    ∀ j, MemBox (extendRayBox S q j) ((S : ℂ) * z j) := by
  intro j
  refine Fin.cases ?_ (fun i => hz.2 i) j
  simp [extendRayBox, hz.1, boxPoint, point, MemBox, Mem]

def amplitudeBox (S : ℕ) (E : ZCarrier) (q : ZRayBox) (k : Fin 6) : ZBox :=
  boxSum (fun r => boxMul (boxConj (E r k)) (extendRayBox S q r))
def overlapBox (S : ℕ) (q r : ZRayBox) : ZBox :=
  boxSum (fun j => boxMul (boxConj (extendRayBox S q j)) (extendRayBox S r j))

theorem sum_scaled_product (S : ℕ) (z w : Fin 6 → ℂ) :
    (∑ j, star ((S : ℂ) * z j) * ((S : ℂ) * w j)) =
      (S : ℂ)^2 * (∑ j, star (z j) * w j) := by
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro i hi
  simp only [map_mul, Complex.star_def, map_natCast]
  ring

theorem mem_amplitudeBox {S : ℕ} (hS : 0 < S) {E : ZCarrier} {q : ZRayBox}
    {H : BasisMatrix} {z : Vector} (hH : CarrierBox (toCarrier S E) H)
    (hz : MemRayBox S q z) (k : Fin 6) :
    MemBox (amplitudeBox S E q k) ((S : ℂ)^2 * carrierAmplitude H z k) := by
  have h := mem_boxSum (fun r => boxMul (boxConj (E r k)) (extendRayBox S q r))
    (fun r => star ((S : ℂ) * H r k) * ((S : ℂ) * z r))
    (fun r => mem_boxMul (mem_boxConj ((mem_toRectangle_iff hS _ _).mp (hH r k)))
      (mem_extendRayBox hz r))
  simpa only [sum_scaled_product, amplitudeBox, carrierAmplitude] using h

theorem mem_overlapBox {S : ℕ} {q r : ZRayBox} {z w : Vector}
    (hz : MemRayBox S q z) (hw : MemRayBox S r w) :
    MemBox (overlapBox S q r) ((S : ℂ)^2 * rawOverlap z w) := by
  have h := mem_boxSum (fun j => boxMul (boxConj (extendRayBox S q j)) (extendRayBox S r j))
    (fun j => star ((S : ℂ) * z j) * ((S : ℂ) * w j))
    (fun j => mem_boxMul (mem_boxConj (mem_extendRayBox hz j)) (mem_extendRayBox hw j))
  simpa only [sum_scaled_product, overlapBox, rawOverlap] using h

def orthPossible (S : ℕ) (q r : ZRayBox) : Bool :=
  !(excludes (overlapBox S q r).re 0) && !(excludes (overlapBox S q r).im 0)
def unbiasedPossible (S : ℕ) (q r : ZRayBox) : Bool :=
  !(excludes (boxNormSq (overlapBox S q r)) (6 * (S : ℤ)^4))

theorem normSq_scaled (S : ℕ) (z : ℂ) :
    Complex.normSq ((S : ℂ) * z) = (S : ℝ)^2 * Complex.normSq z := by
  rw [Complex.normSq_mul]
  simp only [Complex.normSq_apply, Complex.natCast_re, Complex.natCast_im, mul_zero, add_zero]
  ring

theorem normSq_scaled_sq (S : ℕ) (z : ℂ) :
    Complex.normSq ((S : ℂ)^2 * z) = (S : ℝ)^4 * Complex.normSq z := by
  rw [Complex.normSq_mul, map_pow]
  simp only [Complex.normSq_apply, Complex.natCast_re, Complex.natCast_im, mul_zero, add_zero]
  ring

theorem orthPossible_sound {S : ℕ} (hS : 0 < S) {q r : ZRayBox} {z w : Vector}
    (hz : MemRawRayBox (toRawRayBox S q) z) (hw : MemRawRayBox (toRawRayBox S r) w)
    (ho : rawOverlap z w = 0) : orthPossible S q r = true := by
  have h := mem_overlapBox ((mem_toRawRayBox_iff hS _ _).mp hz)
    ((mem_toRawRayBox_iff hS _ _).mp hw)
  simp only [ho, mul_zero, MemBox, Complex.zero_re, Complex.zero_im] at h
  have hre : excludes (overlapBox S q r).re 0 = false := by
    cases he : excludes (overlapBox S q r).re 0 with
    | false => rfl
    | true => exact False.elim (excludes_sound he h.1 (by norm_num))
  have him : excludes (overlapBox S q r).im 0 = false := by
    cases he : excludes (overlapBox S q r).im 0 with
    | false => rfl
    | true => exact False.elim (excludes_sound he h.2 (by norm_num))
  simp [orthPossible, hre, him]

theorem unbiasedPossible_sound {S : ℕ} (hS : 0 < S) {q r : ZRayBox} {z w : Vector}
    (hz : MemRawRayBox (toRawRayBox S q) z) (hw : MemRawRayBox (toRawRayBox S r) w)
    (ho : Complex.normSq (rawOverlap z w) = 6) : unbiasedPossible S q r = true := by
  have h := mem_boxNormSq (mem_overlapBox ((mem_toRawRayBox_iff hS _ _).mp hz)
    ((mem_toRawRayBox_iff hS _ _).mp hw))
  cases he : excludes (boxNormSq (overlapBox S q r)) (6 * (S : ℤ)^4) with
  | false => simp [unbiasedPossible, he]
  | true =>
    apply False.elim
    apply excludes_sound he h
    rw [normSq_scaled_sq, ho]
    push_cast
    ring

def rejectRayBox (S : ℕ) (E : ZCarrier) (q : ZRayBox)
    (witness : IntervalKernel.RejectWitness) : Bool :=
  match witness with
  | .unit j => excludes (boxNormSq (q j)) ((S : ℤ)^2)
  | .amplitude k => excludes (boxNormSq (amplitudeBox S E q k)) (6 * (S : ℤ)^4)

theorem rejectRayBox_sound {S : ℕ} (hS : 0 < S) {E : ZCarrier} {q : ZRayBox}
    (witness : IntervalKernel.RejectWitness) (hc : rejectRayBox S E q witness = true)
    {H : BasisMatrix} {z : Vector} (hH : CarrierBox (toCarrier S E) H)
    (hz : MemRayBox S q z) : ¬ IsRawCommonRay H z := by
  intro hcommon
  cases witness with
  | unit j =>
    apply excludes_sound hc (mem_boxNormSq (hz.2 j))
    rw [normSq_scaled, hcommon.1.2 j.succ]
    push_cast
    ring
  | amplitude k =>
    apply excludes_sound hc (mem_boxNormSq (mem_amplitudeBox hS hH hz k))
    rw [normSq_scaled_sq, hcommon.2 k]
    push_cast
    ring

#print axioms mem_toRawRayBox_iff
#print axioms mem_amplitudeBox
#print axioms mem_overlapBox
#print axioms orthPossible_sound
#print axioms unbiasedPossible_sound
#print axioms rejectRayBox_sound
end Mub6.Numerical.IntegerIntervals
