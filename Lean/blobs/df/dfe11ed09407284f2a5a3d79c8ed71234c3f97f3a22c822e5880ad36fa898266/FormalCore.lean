import Mub6.Basic
import Mathlib.Data.Matrix.ConjTranspose
import Mathlib.Data.Matrix.Mul
import Mathlib.Algebra.BigOperators.Fin
import Mathlib.Algebra.BigOperators.Field
import Mathlib.Data.Fintype.Pi
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.FinCases

/-! Candidate numerical foundations, scoped to the September 20 run.
No global or local quartet exclusion is asserted in this module.
Raw vectors have coordinate norm squared one and first coordinate one.
All rectangles have closed, rational endpoints.
-/

namespace Mub6.Numerical

open scoped BigOperators
open Matrix

structure RationalRectangle where
  reLo : ℚ
  reHi : ℚ
  imLo : ℚ
  imHi : ℚ
  deriving DecidableEq

def MemRectangle (q : RationalRectangle) (z : ℂ) : Prop :=
  (q.reLo : ℝ) ≤ z.re ∧ z.re ≤ (q.reHi : ℝ) ∧
  (q.imLo : ℝ) ≤ z.im ∧ z.im ≤ (q.imHi : ℝ)

def squaredDiameter (q : RationalRectangle) : ℚ :=
  (q.reHi - q.reLo)^2 + (q.imHi - q.imLo)^2

theorem interval_difference_sq_le {a b lo hi : ℝ}
    (ha : lo ≤ a ∧ a ≤ hi) (hb : lo ≤ b ∧ b ≤ hi) :
    (a - b)^2 ≤ (hi - lo)^2 := by
  have hp : 0 ≤ (hi - lo - (a - b)) * (hi - lo + (a - b)) :=
    mul_nonneg (by linarith [ha.1, hb.2]) (by linarith [ha.2, hb.1])
  nlinarith

theorem rectangle_distance_bound {q : RationalRectangle} {z w : ℂ}
    (hz : MemRectangle q z) (hw : MemRectangle q w) :
    Complex.normSq (z - w) ≤ (squaredDiameter q : ℝ) := by
  have hr := interval_difference_sq_le ⟨hz.1, hz.2.1⟩ ⟨hw.1, hw.2.1⟩
  have hi := interval_difference_sq_le hz.2.2 hw.2.2
  simp only [Complex.normSq_apply, Complex.sub_re, Complex.sub_im]
  simp only [squaredDiameter, Rat.cast_add, Rat.cast_pow, Rat.cast_sub]
  nlinarith

def gridLo (i : Fin 4) : ℚ := ((i.val : ℚ) - 2) / 2
def gridHi (i : Fin 4) : ℚ := ((i.val : ℚ) - 1) / 2

def IsOuterCell (p : Fin 4 × Fin 4) : Prop :=
  p.1 = 0 ∨ p.1 = ⟨3, by decide⟩ ∨ p.2 = 0 ∨ p.2 = ⟨3, by decide⟩

instance (p : Fin 4 × Fin 4) : Decidable (IsOuterCell p) :=
  inferInstanceAs (Decidable (p.1 = 0 ∨ p.1 = ⟨3, by decide⟩ ∨
    p.2 = 0 ∨ p.2 = ⟨3, by decide⟩))

abbrev CircleSquare := {p : Fin 4 × Fin 4 // IsOuterCell p}

def circleRectangle (p : CircleSquare) : RationalRectangle :=
  ⟨gridLo p.val.1, gridHi p.val.1, gridLo p.val.2, gridHi p.val.2⟩

theorem circleSquare_card : Fintype.card CircleSquare = 12 := by decide

theorem grid_interval_cover {x : ℝ} (hlo : -1 ≤ x) (hhi : x ≤ 1) :
    ∃ i : Fin 4, (gridLo i : ℝ) ≤ x ∧ x ≤ (gridHi i : ℝ) := by
  by_cases h0 : x ≤ -(1 / 2 : ℝ)
  · refine ⟨0, ?_⟩
    norm_num [gridLo, gridHi]
    exact ⟨hlo, h0⟩
  · by_cases h1 : x ≤ 0
    · refine ⟨1, ?_⟩
      norm_num [gridLo, gridHi]
      exact ⟨by linarith, h1⟩
    · by_cases h2 : x ≤ (1 / 2 : ℝ)
      · refine ⟨2, ?_⟩
        norm_num [gridLo, gridHi]
        exact ⟨by linarith, h2⟩
      · refine ⟨⟨3, by decide⟩, ?_⟩
        norm_num [gridLo, gridHi]
        exact ⟨by linarith, hhi⟩

theorem unit_coordinate_bounds {z : ℂ} (hz : Complex.normSq z = 1) :
    (-1 ≤ z.re ∧ z.re ≤ 1) ∧ (-1 ≤ z.im ∧ z.im ≤ 1) := by
  rw [Complex.normSq_apply] at hz
  constructor <;> constructor <;> nlinarith [sq_nonneg z.re, sq_nonneg z.im]

theorem central_interval_bounds {i : Fin 4} {x : ℝ}
    (hi : i ≠ 0 ∧ i ≠ ⟨3, by decide⟩)
    (hx : (gridLo i : ℝ) ≤ x ∧ x ≤ (gridHi i : ℝ)) :
    -(1 / 2 : ℝ) ≤ x ∧ x ≤ (1 / 2 : ℝ) := by
  fin_cases i <;>
    norm_num [gridLo, gridHi, Fin.ext_iff] at hi hx ⊢ <;>
    constructor <;> linarith [hx.1, hx.2]

theorem unit_circle_cover {z : ℂ} (hz : Complex.normSq z = 1) :
    ∃ p : CircleSquare, MemRectangle (circleRectangle p) z := by
  have hb := unit_coordinate_bounds hz
  obtain ⟨i, hi⟩ := grid_interval_cover hb.1.1 hb.1.2
  obtain ⟨j, hj⟩ := grid_interval_cover hb.2.1 hb.2.2
  have hout : IsOuterCell (i, j) := by
    by_contra hn
    have hi' : i ≠ 0 ∧ i ≠ ⟨3, by decide⟩ := by
      constructor <;> intro he <;> apply hn <;> simp [IsOuterCell, he]
    have hj' : j ≠ 0 ∧ j ≠ ⟨3, by decide⟩ := by
      constructor <;> intro he <;> apply hn <;> simp [IsOuterCell, he]
    have hx := central_interval_bounds hi' hi
    have hy := central_interval_bounds hj' hj
    have hxs := mul_nonneg (show 0 ≤ z.re + 1/2 by linarith) (show 0 ≤ 1/2 - z.re by linarith)
    have hys := mul_nonneg (show 0 ≤ z.im + 1/2 by linarith) (show 0 ≤ 1/2 - z.im by linarith)
    rw [Complex.normSq_apply] at hz
    nlinarith
  exact ⟨⟨(i, j), hout⟩, hi.1, hi.2, hj.1, hj.2⟩

theorem circleRectangle_squaredDiameter (p : CircleSquare) :
    squaredDiameter (circleRectangle p) = 1 / 2 := by
  simp only [squaredDiameter, circleRectangle, gridLo, gridHi]
  ring

def IsRawUnitRay (z : Vector) : Prop :=
  z 0 = 1 ∧ ∀ j, Complex.normSq (z j) = 1

abbrev RayGrid := Fin 5 → CircleSquare

def MemRayGrid (g : RayGrid) (z : Vector) : Prop :=
  z 0 = 1 ∧ ∀ j : Fin 5, MemRectangle (circleRectangle (g j)) (z j.succ)

theorem rayGrid_card : Fintype.card RayGrid = 248832 := by
  rw [Fintype.card_fun, circleSquare_card]
  norm_num

theorem raw_ray_grid_cover {z : Vector} (hz : IsRawUnitRay z) :
    ∃ g : RayGrid, MemRayGrid g z := by
  classical
  choose g hg using fun j : Fin 5 => unit_circle_cover (hz.2 j.succ)
  exact ⟨g, hz.1, hg⟩

def rawOverlap (z w : Vector) : ℂ := ∑ j : Fin 6, star (z j) * w j

theorem rawOverlap_eq_overlap (z w : Vector) :
    rawOverlap z w = overlap (fun j _ => z j) (fun j _ => w j) 0 0 := rfl

theorem unit_close_re_overlap {u v : ℂ} (hu : Complex.normSq u = 1)
    (hv : Complex.normSq v = 1) (hd : Complex.normSq (u - v) ≤ 1) :
    (1 / 2 : ℝ) ≤ (star u * v).re := by
  rw [Complex.normSq_sub, hu, hv] at hd
  simp only [Complex.star_def, Complex.mul_re, Complex.conj_re, Complex.conj_im] at hd ⊢
  nlinarith

theorem raw_close_re_overlap {z w : Vector} (hz : IsRawUnitRay z)
    (hw : IsRawUnitRay w)
    (hd : ∀ j : Fin 5, Complex.normSq (z j.succ - w j.succ) ≤ 1) :
    (7 / 2 : ℝ) ≤ (rawOverlap z w).re := by
  have hsum : ∑ j : Fin 5, (1 / 2 : ℝ) ≤
      ∑ j : Fin 5, (star (z j.succ) * w j.succ).re := by
    apply Finset.sum_le_sum
    intro j _
    exact unit_close_re_overlap (hz.2 j.succ) (hw.2 j.succ) (hd j)
  rw [rawOverlap, Fin.sum_univ_succ]
  simp only [hz.1, hw.1, star_one, one_mul, Complex.add_re, Complex.one_re]
  change (7 / 2 : ℝ) ≤ 1 + Complex.reAddGroupHom (∑ i : Fin 5, star (z i.succ) * w i.succ)
  rw [map_sum]
  norm_num only [Finset.sum_const, Finset.card_univ, Fintype.card_fin, nsmul_eq_mul] at hsum
  change (7 / 2 : ℝ) ≤ 1 + ∑ i : Fin 5, (star (z i.succ) * w i.succ).re
  linarith

theorem raw_close_normSq_overlap {z w : Vector} (hz : IsRawUnitRay z)
    (hw : IsRawUnitRay w)
    (hd : ∀ j : Fin 5, Complex.normSq (z j.succ - w j.succ) ≤ 1) :
    (49 / 4 : ℝ) ≤ Complex.normSq (rawOverlap z w) := by
  have hr := raw_close_re_overlap hz hw hd
  have hn := Complex.re_sq_le_normSq (rawOverlap z w)
  nlinarith

theorem raw_close_separation {z w : Vector} (hz : IsRawUnitRay z)
    (hw : IsRawUnitRay w)
    (hd : ∀ j : Fin 5, Complex.normSq (z j.succ - w j.succ) ≤ 1) :
    rawOverlap z w ≠ 0 ∧ Complex.normSq (rawOverlap z w) ≠ 6 := by
  have hn := raw_close_normSq_overlap hz hw hd
  constructor
  · intro he
    rw [he] at hn
    norm_num at hn
  · linarith

theorem same_grid_separation {g : RayGrid} {z w : Vector}
    (hz : IsRawUnitRay z) (hw : IsRawUnitRay w)
    (hzg : MemRayGrid g z) (hwg : MemRayGrid g w) :
    rawOverlap z w ≠ 0 ∧ Complex.normSq (rawOverlap z w) ≠ 6 := by
  apply raw_close_separation hz hw
  intro j
  have h := rectangle_distance_bound (hzg.2 j) (hwg.2 j)
  rw [circleRectangle_squaredDiameter] at h
  norm_num at h
  linarith

/-! Arbitrary closed rational boxes and their physical carrier interface. -/

abbrev RawRayBox := Fin 5 → RationalRectangle

def MemRawRayBox (q : RawRayBox) (z : Vector) : Prop :=
  z 0 = 1 ∧ ∀ j : Fin 5, MemRectangle (q j) (z j.succ)

def IsSmallRayBox (q : RawRayBox) : Prop :=
  ∀ j, squaredDiameter (q j) ≤ 1

theorem same_ray_box_separation {q : RawRayBox} {z w : Vector}
    (hz : IsRawUnitRay z) (hw : IsRawUnitRay w) (hq : IsSmallRayBox q)
    (hzq : MemRawRayBox q z) (hwq : MemRawRayBox q w) :
    rawOverlap z w ≠ 0 ∧ Complex.normSq (rawOverlap z w) ≠ 6 := by
  apply raw_close_separation hz hw
  intro j
  have h := rectangle_distance_bound (hzq.2 j) (hwq.2 j)
  have hsmall : (squaredDiameter (q j) : ℝ) ≤ 1 := by exact_mod_cast hq j
  exact h.trans hsmall

/-- Unnormalized complex Hadamard carrier: entry norms one and H†H = 6 I. -/
def PhaseHadamard (H : Matrix (Fin 6) (Fin 6) ℂ) : Prop :=
  (∀ r k, Complex.normSq (H r k) = 1) ∧
    Matrix.conjTranspose H * H =
      (6 : ℂ) • (1 : Matrix (Fin 6) (Fin 6) ℂ)

abbrev CarrierRegion := Fin 6 → Fin 6 → RationalRectangle

def CarrierBox (E : CarrierRegion) (H : BasisMatrix) : Prop :=
  ∀ r k, MemRectangle (E r k) (H r k)

/-- The adjoint convention is explicit: the k-th H†z component. -/
def carrierAmplitude (H : BasisMatrix) (z : Vector) (k : Fin 6) : ℂ :=
  ∑ r : Fin 6, star (H r k) * z r

theorem carrierAmplitude_eq_mulVec (H : BasisMatrix) (z : Vector) (k : Fin 6) :
    carrierAmplitude H z k = (Matrix.conjTranspose H).mulVec z k := rfl

theorem carrierAmplitude_eq_rawOverlap (H : BasisMatrix) (z : Vector) (k : Fin 6) :
    carrierAmplitude H z k = rawOverlap (fun r => H r k) z := rfl

def IsRawCommonRay (H : BasisMatrix) (z : Vector) : Prop :=
  IsRawUnitRay z ∧ ∀ k, Complex.normSq (carrierAmplitude H z k) = 6

def UniformRayCover (E : CarrierRegion) (boxes : Finset RawRayBox) : Prop :=
  ∀ H, PhaseHadamard H → CarrierBox E H → ∀ z, IsRawCommonRay H z →
    ∃ q ∈ boxes, MemRawRayBox q z

theorem carrierAmplitude_re (H : BasisMatrix) (z : Vector) (k : Fin 6) :
    (carrierAmplitude H z k).re =
      ∑ r : Fin 6, ((H r k).re * (z r).re + (H r k).im * (z r).im) := by
  change Complex.reAddGroupHom (∑ r : Fin 6, star (H r k) * z r) = _
  rw [map_sum]
  apply Finset.sum_congr rfl
  intro r _
  simp [Complex.star_def, Complex.mul_re]

theorem carrierAmplitude_im (H : BasisMatrix) (z : Vector) (k : Fin 6) :
    (carrierAmplitude H z k).im =
      ∑ r : Fin 6, ((H r k).re * (z r).im - (H r k).im * (z r).re) := by
  change Complex.imAddGroupHom (∑ r : Fin 6, star (H r k) * z r) = _
  rw [map_sum]
  apply Finset.sum_congr rfl
  intro r _
  simp [Complex.star_def, Complex.mul_im, sub_eq_add_neg]

/-- Direct physical-to-real-polynomial binding for every amplitude equation. -/
theorem common_ray_polynomial_equations {H : BasisMatrix} {z : Vector}
    (hz : IsRawCommonRay H z) (k : Fin 6) :
    (∑ r : Fin 6, ((H r k).re * (z r).re + (H r k).im * (z r).im))^2 +
      (∑ r : Fin 6, ((H r k).re * (z r).im - (H r k).im * (z r).re))^2 = 6 := by
  have h := hz.2 k
  rw [Complex.normSq_apply, carrierAmplitude_re, carrierAmplitude_im] at h
  simpa only [pow_two] using h

/-- A ray box of squared coordinate diagonals at most one cannot contain
both a dephased carrier column and a raw ray unbiased to that carrier. -/
theorem carrier_column_box_exclusion {H : BasisMatrix} (hH : PhaseHadamard H)
    {q : RawRayBox} (hq : IsSmallRayBox q) (k : Fin 6)
    (hc : MemRawRayBox q (fun r => H r k)) :
    ∀ z, MemRawRayBox q z → ¬ IsRawCommonRay H z := by
  intro z hz hcommon
  have hu : IsRawUnitRay (fun r => H r k) := ⟨hc.1, fun r => hH.1 r k⟩
  have hs := same_ray_box_separation hu hcommon.1 hq hc hz
  exact hs.2 (hcommon.2 k)

theorem carrier_column_grid_exclusion {H : BasisMatrix} (hH : PhaseHadamard H)
    {g : RayGrid} (k : Fin 6) (hc : MemRayGrid g (fun r => H r k)) :
    ∀ z, MemRayGrid g z → ¬ IsRawCommonRay H z := by
  intro z hz hcommon
  have hu : IsRawUnitRay (fun r => H r k) := ⟨hc.1, fun r => hH.1 r k⟩
  exact (same_grid_separation hu hcommon.1 hc hz).2 (hcommon.2 k)

/-- Flat normalized rays are converted to the raw gauge by dividing by
their nonzero first coordinate; the normalization factor is not discarded. -/
def IsNormalizedFlatRay (v : Vector) : Prop :=
  ∀ j, Complex.normSq (v j) = (1 : ℝ) / 6

noncomputable def dephaseFlatRay (v : Vector) : Vector := fun j => v j / v 0

theorem flatRay_zero_ne_zero {v : Vector} (hv : IsNormalizedFlatRay v) : v 0 ≠ 0 := by
  intro he
  have h := hv 0
  rw [he] at h
  norm_num at h

theorem dephaseFlatRay_isRawUnitRay {v : Vector} (hv : IsNormalizedFlatRay v) :
    IsRawUnitRay (dephaseFlatRay v) := by
  constructor
  · exact div_self (flatRay_zero_ne_zero hv)
  · intro j
    dsimp [dephaseFlatRay]
    rw [Complex.normSq_div, hv j, hv 0]
    norm_num

theorem rawOverlap_dephaseFlatRay (v w : Vector) :
    rawOverlap (dephaseFlatRay v) (dephaseFlatRay w) =
      rawOverlap v w / (star (v 0) * w 0) := by
  simp only [rawOverlap, dephaseFlatRay]
  rw [Finset.sum_div]
  apply Finset.sum_congr rfl
  intro j _
  simp [star_div, div_eq_mul_inv, mul_comm, mul_left_comm, mul_assoc]

/-- Physical normalized orthogonality survives dephasing. -/
theorem dephase_preserves_orthogonality {v w : Vector}
    (h : rawOverlap v w = 0) :
    rawOverlap (dephaseFlatRay v) (dephaseFlatRay w) = 0 := by
  rw [rawOverlap_dephaseFlatRay, h, zero_div]

/-- The normalized squared overlap 1/6 becomes the raw squared overlap 6. -/
theorem dephase_unbiased_normSq {v w : Vector}
    (hv : IsNormalizedFlatRay v) (hw : IsNormalizedFlatRay w)
    (h : Complex.normSq (rawOverlap v w) = (1 : ℝ) / 6) :
    Complex.normSq (rawOverlap (dephaseFlatRay v) (dephaseFlatRay w)) = 6 := by
  rw [rawOverlap_dephaseFlatRay, Complex.normSq_div, h, Complex.normSq_mul]
  change (1 : ℝ) / 6 / (Complex.normSq ((starRingEnd ℂ) (v 0)) * Complex.normSq (w 0)) = 6
  rw [Complex.normSq_conj, hv 0, hw 0]
  norm_num

/-- Columnwise division converts an actual flat normalized basis to the
unnormalized, first-row-dephased carrier without introducing a square root. -/
noncomputable def rawCarrierOfFlatBasis (B : BasisMatrix) : Matrix (Fin 6) (Fin 6) ℂ :=
  fun r k => B r k / B 0 k

theorem rawCarrierOfFlatBasis_isPhaseHadamard {B : BasisMatrix}
    (hB : IsOrthonormalBasis B)
    (hflat : ∀ k, IsNormalizedFlatRay (fun r => B r k)) :
    PhaseHadamard (rawCarrierOfFlatBasis B) := by
  constructor
  · intro r k
    exact (dephaseFlatRay_isRawUnitRay (hflat k)).2 r
  · ext i j
    change rawOverlap (dephaseFlatRay (fun r => B r i))
      (dephaseFlatRay (fun r => B r j)) = _
    rw [rawOverlap_dephaseFlatRay]
    change overlap B B i j / (star (B 0 i) * B 0 j) = _
    rw [hB i j]
    by_cases hij : i = j
    · subst j
      have hden : star (B 0 i) * B 0 i = (((1 : ℝ) / 6) : ℂ) := by
        change (starRingEnd ℂ) (B 0 i) * B 0 i = _
        rw [← Complex.normSq_eq_conj_mul_self, hflat i 0]
        push_cast
        rfl
      rw [hden]
      norm_num [Matrix.smul_apply, Matrix.one_apply]
    · simp [hij, Matrix.smul_apply, Matrix.one_apply]

theorem rawCarrierOfFlatBasis_first_row {B : BasisMatrix}
    (hflat : ∀ k, IsNormalizedFlatRay (fun r => B r k)) (k : Fin 6) :
    rawCarrierOfFlatBasis B 0 k = 1 :=
  div_self (flatRay_zero_ne_zero (hflat k))

/-- An actual flat normalized basis ray unbiased to B gives a raw common
ray of the corresponding physical carrier. -/
theorem unbiased_basis_gives_rawCommonRay {B C : BasisMatrix}
    (hBflat : ∀ k, IsNormalizedFlatRay (fun r => B r k))
    (hCflat : ∀ j, IsNormalizedFlatRay (fun r => C r j))
    (hBC : IsUnbiased B C) (j : Fin 6) :
    IsRawCommonRay (rawCarrierOfFlatBasis B) (dephaseFlatRay (fun r => C r j)) := by
  constructor
  · exact dephaseFlatRay_isRawUnitRay (hCflat j)
  · intro k
    change Complex.normSq (rawOverlap (dephaseFlatRay (fun r => B r k))
      (dephaseFlatRay (fun r => C r j))) = 6
    exact dephase_unbiased_normSq (hBflat k) (hCflat j) (hBC k j)

def splitRectangleReLeft (q : RationalRectangle) (cut : ℚ) : RationalRectangle :=
  { q with reHi := cut }

def splitRectangleReRight (q : RationalRectangle) (cut : ℚ) : RationalRectangle :=
  { q with reLo := cut }

def splitRectangleImLeft (q : RationalRectangle) (cut : ℚ) : RationalRectangle :=
  { q with imHi := cut }

def splitRectangleImRight (q : RationalRectangle) (cut : ℚ) : RationalRectangle :=
  { q with imLo := cut }

theorem rectangle_split_re_cover {q : RationalRectangle} {z : ℂ} (cut : ℚ)
    (hz : MemRectangle q z) :
    MemRectangle (splitRectangleReLeft q cut) z ∨
      MemRectangle (splitRectangleReRight q cut) z := by
  by_cases h : z.re ≤ (cut : ℝ)
  · exact Or.inl ⟨hz.1, h, hz.2.2⟩
  · exact Or.inr ⟨le_of_lt (lt_of_not_ge h), hz.2⟩

theorem rectangle_split_im_cover {q : RationalRectangle} {z : ℂ} (cut : ℚ)
    (hz : MemRectangle q z) :
    MemRectangle (splitRectangleImLeft q cut) z ∨
      MemRectangle (splitRectangleImRight q cut) z := by
  by_cases h : z.im ≤ (cut : ℝ)
  · exact Or.inl ⟨hz.1, hz.2.1, hz.2.2.1, h⟩
  · exact Or.inr ⟨hz.1, hz.2.1, le_of_lt (lt_of_not_ge h), hz.2.2.2⟩

theorem raw_ray_box_coordinate_split_cover {q : RawRayBox} {z : Vector}
    (hz : MemRawRayBox q z) (j : Fin 5) (left right : RationalRectangle)
    (hsplit : ∀ u, MemRectangle (q j) u → MemRectangle left u ∨ MemRectangle right u) :
    MemRawRayBox (Function.update q j left) z ∨
      MemRawRayBox (Function.update q j right) z := by
  obtain hleft | hright := hsplit (z j.succ) (hz.2 j)
  · left
    refine ⟨hz.1, ?_⟩
    intro k
    by_cases hk : k = j
    · subst k
      simpa using hleft
    · simpa [Function.update, hk] using hz.2 k
  · right
    refine ⟨hz.1, ?_⟩
    intro k
    by_cases hk : k = j
    · subst k
      simpa using hright
    · simpa [Function.update, hk] using hz.2 k

/-- The constant southwest square, root 0 in the lexicographic producer. -/
def rootZeroBox : RawRayBox := fun _ => ⟨-1, -1/2, -1, -1/2⟩

def rootZeroGrid : RayGrid := fun _ => ⟨(0, 0), Or.inl rfl⟩

theorem rootZeroBox_eq_grid (j : Fin 5) :
    rootZeroBox j = circleRectangle (rootZeroGrid j) := by
  norm_num [rootZeroBox, circleRectangle, rootZeroGrid, gridLo, gridHi]

theorem rootZeroBox_amplitude_bound {H : BasisMatrix}
    (hcol : ∀ r, H r 0 = 1) {z : Vector} (hz : MemRawRayBox rootZeroBox z) :
    (17 / 2 : ℝ) ≤ Complex.normSq (carrierAmplitude H z 0) := by
  have hre : (∑ j : Fin 5, (z j.succ).re) ≤ ∑ _j : Fin 5, (-1/2 : ℝ) := by
    apply Finset.sum_le_sum
    intro j _
    have h := (hz.2 j).2.1
    norm_num [rootZeroBox] at h
    linarith
  have him : (∑ j : Fin 5, (z j.succ).im) ≤ ∑ _j : Fin 5, (-1/2 : ℝ) := by
    apply Finset.sum_le_sum
    intro j _
    have h := (hz.2 j).2.2.2
    norm_num [rootZeroBox] at h
    linarith
  have hr : (carrierAmplitude H z 0).re = 1 + ∑ j : Fin 5, (z j.succ).re := by
    rw [carrierAmplitude_re, Fin.sum_univ_succ]
    simp [hcol, hz.1]
  have hi : (carrierAmplitude H z 0).im = ∑ j : Fin 5, (z j.succ).im := by
    rw [carrierAmplitude_im, Fin.sum_univ_succ]
    simp [hcol, hz.1]
  norm_num only [Finset.sum_const, Finset.card_univ, Fintype.card_fin, nsmul_eq_mul] at hre him
  have hr' : (carrierAmplitude H z 0).re ≤ -3/2 := by linarith
  have hi' : (carrierAmplitude H z 0).im ≤ -5/2 := by linarith
  rw [Complex.normSq_apply]
  nlinarith [sq_nonneg ((carrierAmplitude H z 0).re + 3/2),
    sq_nonneg ((carrierAmplitude H z 0).im + 5/2)]

/-- Uniform exact ray-box pruning, without claiming the carrier region empty. -/
theorem rootZeroBox_exclusion {H : BasisMatrix} (hcol : ∀ r, H r 0 = 1) :
    ∀ z, MemRawRayBox rootZeroBox z → ¬ IsRawCommonRay H z := by
  intro z hz hcommon
  have h := rootZeroBox_amplitude_bound hcol hz
  rw [hcommon.2 0] at h
  norm_num at h

#print axioms rectangle_distance_bound
#print axioms circleSquare_card
#print axioms unit_circle_cover
#print axioms circleRectangle_squaredDiameter
#print axioms rayGrid_card
#print axioms raw_ray_grid_cover
#print axioms rawOverlap_eq_overlap
#print axioms raw_close_re_overlap
#print axioms raw_close_normSq_overlap
#print axioms raw_close_separation
#print axioms same_grid_separation
#print axioms same_ray_box_separation
#print axioms carrierAmplitude_eq_mulVec
#print axioms carrierAmplitude_eq_rawOverlap
#print axioms carrierAmplitude_re
#print axioms carrierAmplitude_im
#print axioms common_ray_polynomial_equations
#print axioms carrier_column_box_exclusion
#print axioms carrier_column_grid_exclusion
#print axioms dephaseFlatRay_isRawUnitRay
#print axioms rawOverlap_dephaseFlatRay
#print axioms dephase_preserves_orthogonality
#print axioms dephase_unbiased_normSq
#print axioms rawCarrierOfFlatBasis_isPhaseHadamard
#print axioms rawCarrierOfFlatBasis_first_row
#print axioms unbiased_basis_gives_rawCommonRay
#print axioms rectangle_split_re_cover
#print axioms rectangle_split_im_cover
#print axioms raw_ray_box_coordinate_split_cover
#print axioms rootZeroBox_eq_grid
#print axioms rootZeroBox_amplitude_bound
#print axioms rootZeroBox_exclusion

end Mub6.Numerical
