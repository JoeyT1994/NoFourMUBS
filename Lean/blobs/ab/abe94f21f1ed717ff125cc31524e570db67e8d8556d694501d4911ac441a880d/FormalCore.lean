import Mub6.Basic
import Mathlib.Data.Matrix.ConjTranspose
import Mathlib.Algebra.BigOperators.Fin
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

end Mub6.Numerical
