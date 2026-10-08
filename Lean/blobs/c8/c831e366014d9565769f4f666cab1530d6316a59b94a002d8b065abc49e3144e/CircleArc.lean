import CircleQuadratic
import RationalCircleCharts
import IntegerPhysical

/-! Pure integer certificates for cached rational-circle images and carrier
terms. The coefficient rectangle is already conjugated by the producer.
This module never assumes that a proposed table entry encloses its image. -/
namespace Mub6.Numerical.CircleArc
open IntegerIntervals CircleQuadratic CircleCharts

def scaleInterval (R : ℕ) (q : ZInterval) : ZInterval :=
  ⟨(R : ℤ) * q.lo, (R : ℤ) * q.hi⟩

def scaleBox (R : ℕ) (q : ZBox) : ZBox :=
  ⟨scaleInterval R q.re, scaleInterval R q.im⟩

def rectangleSubset (p q : ZBox) : Bool := decide
  (q.re.lo ≤ p.re.lo ∧ p.re.hi ≤ q.re.hi ∧
   q.im.lo ≤ p.im.lo ∧ p.im.hi ≤ q.im.hi)

theorem rectangleSubset_sound {p q : ZBox} {z : ℂ}
    (hc : rectangleSubset p q = true) (hz : MemBox p z) : MemBox q z := by
  have h : q.re.lo ≤ p.re.lo ∧ p.re.hi ≤ q.re.hi ∧
      q.im.lo ≤ p.im.lo ∧ p.im.hi ≤ q.im.hi := of_decide_eq_true hc
  have h1 : (q.re.lo : ℝ) ≤ p.re.lo := by exact_mod_cast h.1
  have h2 : (p.re.hi : ℝ) ≤ q.re.hi := by exact_mod_cast h.2.1
  have h3 : (q.im.lo : ℝ) ≤ p.im.lo := by exact_mod_cast h.2.2.1
  have h4 : (p.im.hi : ℝ) ≤ q.im.hi := by exact_mod_cast h.2.2.2
  exact ⟨⟨h1.trans hz.1.1, hz.1.2.trans h2⟩,
    ⟨h3.trans hz.2.1, hz.2.2.trans h4⟩⟩

theorem mem_scaleBox_iff {R : ℕ} (hR : 0 < R) (q : ZBox) (z : ℂ) :
    MemBox (scaleBox R q) ((R : ℂ) * z) ↔ MemBox q z := by
  have hRreal : (0 : ℝ) < R := by exact_mod_cast hR
  simp only [scaleBox, scaleInterval, MemBox, Mem, Int.cast_mul, Int.cast_natCast,
    Complex.mul_re, Complex.mul_im, Complex.natCast_re, Complex.natCast_im,
    zero_mul, sub_zero, zero_add, add_zero, mul_le_mul_iff_right₀ hRreal]

/-- Any exact pivot works; the data producer chooses the rectangle midpoint. -/
noncomputable def pivot (R : ℕ) (a b : ℤ) : ℂ :=
  ⟨(a : ℝ) / (R : ℝ), (b : ℝ) / (R : ℝ)⟩

theorem pivot_scaled {R : ℕ} (hR : 0 < R) (a b : ℤ) :
    (R : ℂ) * pivot R a b = ⟨(a : ℝ), (b : ℝ)⟩ := by
  have hRreal : (R : ℝ) ≠ 0 := by exact_mod_cast (Nat.ne_of_gt hR)
  apply Complex.ext <;> simp [pivot]
  all_goals field_simp

theorem pivot_circle_re (R : ℕ) (a b : ℤ) (t : ℝ) :
    (pivot R a b * circlePoint t).re =
      linearCircleValue ((a : ℝ) / (R : ℝ)) ((-b : ℤ) / (R : ℝ)) t := by
  simp only [pivot, circlePoint, Complex.mul_re,
    linearCircleValue, Int.cast_neg, pow_two]
  ring

theorem pivot_circle_im (R : ℕ) (a b : ℤ) (t : ℝ) :
    (pivot R a b * circlePoint t).im =
      linearCircleValue ((b : ℝ) / (R : ℝ)) ((a : ℝ) / (R : ℝ)) t := by
  simp only [pivot, circlePoint, Complex.mul_im,
    linearCircleValue, pow_two]
  ring

theorem parameter_bounds {T : ℕ} (hT : 0 < T) {p : ZInterval} {t : ℝ}
    (ht : Mem p ((T : ℝ) * t)) :
    (p.lo : ℝ) / (T : ℝ) ≤ t ∧ t ≤ (p.hi : ℝ) / (T : ℝ) := by
  have hTreal : (0 : ℝ) < T := by exact_mod_cast hT
  exact ⟨(div_le_iff₀ hTreal).2 (by simpa only [mul_comm] using ht.1),
    (le_div_iff₀ hTreal).2 (by simpa only [mul_comm] using ht.2)⟩

theorem scaled_mem_of_bounds {R : ℕ} (hR : 0 < R) {q : ZInterval} {x : ℝ}
    (hx : (q.lo : ℝ) / (R : ℝ) ≤ x ∧ x ≤ (q.hi : ℝ) / (R : ℝ)) :
    Mem q ((R : ℝ) * x) := by
  have hRreal : (0 : ℝ) < R := by exact_mod_cast hR
  exact ⟨by simpa only [mul_comm] using (div_le_iff₀ hRreal).1 hx.1,
    by simpa only [mul_comm] using (le_div_iff₀ hRreal).1 hx.2⟩

def checkCentre (T R : ℕ) (p : ZInterval) (a b : ℤ) (q : ZBox) : Bool :=
  checkCircleRange a (-b) q.re.lo q.re.hi p.lo p.hi T R &&
    checkCircleRange b a q.im.lo q.im.hi p.lo p.hi T R

theorem checkCentre_sound {T R : ℕ} (hT : 0 < T) (hR : 0 < R)
    {p : ZInterval} {a b : ℤ} {q : ZBox}
    (hc : checkCentre T R p a b q = true) {t : ℝ}
    (ht : Mem p ((T : ℝ) * t)) :
    MemBox q ((R : ℂ) * (pivot R a b * circlePoint t)) := by
  have hh : checkCircleRange a (-b) q.re.lo q.re.hi p.lo p.hi T R = true ∧
      checkCircleRange b a q.im.lo q.im.hi p.lo p.hi T R = true := by
    simpa only [checkCentre, Bool.and_eq_true] using hc
  have hb := parameter_bounds hT ht
  have hre := checkCircleRange_sound a (-b) q.re.lo q.re.hi p.lo p.hi T R
    hh.1 t (by simpa using hb.1) (by simpa using hb.2)
  have him := checkCircleRange_sound b a q.im.lo q.im.hi p.lo p.hi T R
    hh.2 t (by simpa using hb.1) (by simpa using hb.2)
  have hre' : (q.re.lo : ℝ) / (R : ℝ) ≤ (pivot R a b * circlePoint t).re ∧
      (pivot R a b * circlePoint t).re ≤ (q.re.hi : ℝ) / (R : ℝ) := by
    simpa only [pivot_circle_re, Int.cast_natCast] using hre
  have him' : (q.im.lo : ℝ) / (R : ℝ) ≤ (pivot R a b * circlePoint t).im ∧
      (pivot R a b * circlePoint t).im ≤ (q.im.hi : ℝ) / (R : ℝ) := by
    simpa only [pivot_circle_im, Int.cast_natCast] using him
  simpa only [MemBox, Complex.mul_re, Complex.mul_im, Complex.natCast_re,
    Complex.natCast_im, zero_mul, sub_zero, zero_add, add_zero] using
    And.intro (scaled_mem_of_bounds hR hre') (scaled_mem_of_bounds hR him')

def checkImage (T R : ℕ) (p : ZInterval) (image : ZBox) : Bool :=
  checkCentre T R p R 0 image

theorem checkImage_sound {T R : ℕ} (hT : 0 < T) (hR : 0 < R)
    {p : ZInterval} {image : ZBox} (hc : checkImage T R p image = true)
    {t : ℝ} (ht : Mem p ((T : ℝ) * t)) :
    MemBox image ((R : ℂ) * circlePoint t) := by
  have hRreal : (R : ℝ) ≠ 0 := by exact_mod_cast (Nat.ne_of_gt hR)
  have hp : pivot R R 0 = 1 := by
    apply Complex.ext <;> simp [pivot, hRreal]
  simpa only [hp, one_mul] using checkCentre_sound hT hR hc ht

/-- The centre and uncertainty product are compared at scale R². -/
def termEnclosure (R : ℕ) (a b : ℤ) (coefficient image centre : ZBox) : ZBox :=
  boxAdd (scaleBox R centre) (boxMul (boxSub coefficient (boxPoint a b)) image)

def checkTerm (T R : ℕ) (p : ZInterval) (a b : ℤ)
    (coefficient image centre output : ZBox) : Bool :=
  checkCentre T R p a b centre &&
    rectangleSubset (termEnclosure R a b coefficient image centre) (scaleBox R output)

theorem checkTerm_of_mem_image {T R : ℕ} (hT : 0 < T) (hR : 0 < R)
    {p : ZInterval} {a b : ℤ} {coefficient image centre output : ZBox}
    (hc : checkTerm T R p a b coefficient image centre output = true)
    {t : ℝ} (ht : Mem p ((T : ℝ) * t))
    (hi : MemBox image ((R : ℂ) * circlePoint t))
    {c : ℂ} (hcoeff : MemBox coefficient ((R : ℂ) * c)) :
    MemBox output ((R : ℂ) * (c * circlePoint t)) := by
  have hh : checkCentre T R p a b centre = true ∧
      rectangleSubset (termEnclosure R a b coefficient image centre) (scaleBox R output) = true := by
    simpa only [checkTerm, Bool.and_eq_true] using hc
  have hm : MemBox (boxPoint a b) ((R : ℂ) * pivot R a b) := by
    rw [pivot_scaled hR]
    exact mem_boxPoint a b
  have hcentre := (mem_scaleBox_iff hR centre _).2 (checkCentre_sound hT hR hh.1 ht)
  have herr := mem_boxMul (mem_boxSub hcoeff hm) hi
  have hsum := mem_boxAdd hcentre herr
  have he : (R : ℂ) * ((R : ℂ) * (pivot R a b * circlePoint t)) +
      ((R : ℂ) * c - (R : ℂ) * pivot R a b) * ((R : ℂ) * circlePoint t) =
      (R : ℂ) * ((R : ℂ) * (c * circlePoint t)) := by ring
  rw [he] at hsum
  exact (mem_scaleBox_iff hR output _).1 (rectangleSubset_sound hh.2 hsum)

theorem checkTerm_sound {T R : ℕ} (hT : 0 < T) (hR : 0 < R)
    {p : ZInterval} {a b : ℤ} {coefficient image centre output : ZBox}
    (hi : checkImage T R p image = true)
    (hc : checkTerm T R p a b coefficient image centre output = true)
    {t : ℝ} (ht : Mem p ((T : ℝ) * t))
    {c : ℂ} (hcoeff : MemBox coefficient ((R : ℂ) * c)) :
    MemBox output ((R : ℂ) * (c * circlePoint t)) :=
  checkTerm_of_mem_image hT hR hc ht (checkImage_sound hT hR hi ht) hcoeff

#print axioms rectangleSubset_sound
#print axioms mem_scaleBox_iff
#print axioms pivot_scaled
#print axioms pivot_circle_re
#print axioms pivot_circle_im
#print axioms checkCentre_sound
#print axioms checkImage_sound
#print axioms checkTerm_of_mem_image
#print axioms checkTerm_sound
end Mub6.Numerical.CircleArc
