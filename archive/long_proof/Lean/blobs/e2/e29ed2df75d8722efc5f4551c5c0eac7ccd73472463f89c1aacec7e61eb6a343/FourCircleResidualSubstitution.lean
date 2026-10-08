import PhysicalResidualPolynomials
import FourCircleCarrierSubstitution
import ShiftedPolynomialIntervals

/-! Per-seed rational-circle denominator clearing for the actual ten-real-coordinate
residual ring. The selected side's complex sheet remains two free coordinates.
No division by a physical lifted denominator is performed or assumed. -/
namespace Mub6.Classification.FourCircleResidualSubstitution
open MvPolynomial
open Mub6.Numerical Mub6.Numerical.CircleCharts
open Mub6.Classification.FourPhase Mub6.Classification.PoleAtlas
open Mub6.Classification.SharedResidualPolynomials
open scoped BigOperators
noncomputable section

abbrev CircleVariable := Fin 4 ⊕ Fin 2
abbrev CirclePoly := MvPolynomial CircleVariable ℚ
abbrev DegreeBound := Fin 4 → ℕ

def evalCircle (p : CircleVariable → ℝ) (P : CirclePoly) : ℝ :=
  eval₂ (algebraMap ℚ ℝ) p P

def chartPoint (t : SeedParameters) (z : ℂ) : CircleVariable → ℝ :=
  Sum.elim t (fun k => if k = 0 then z.re else z.im)

def perSeedDenominator (j : Fin 4) : CirclePoly := 1 + X (Sum.inl j) ^ 2

def rawSeedNumerator (s : SeedSigns) (j : Fin 4) (k : Fin 2) : CirclePoly :=
  C (SharedRationalIncidence.signValueQ (s j)) *
    (if k = 0 then 1 - X (Sum.inl j) ^ 2 else 2 * X (Sum.inl j))

def pairDegree (d : Variable →₀ ℕ) (j : Fin 4) : ℕ :=
  d (j.castSucc, 0) + d (j.castSucc, 1)

def degreeBound (P : Poly) : DegreeBound := fun j =>
  P.support.sup (fun d => pairDegree d j)

def Admissible (B : DegreeBound) (P : Poly) : Prop :=
  ∀ d ∈ P.support, ∀ j, pairDegree d j ≤ B j

def clearingDenominator (B : DegreeBound) : CirclePoly :=
  ∏ j : Fin 4, perSeedDenominator j ^ B j

def sheetMonomial (d : Variable →₀ ℕ) : CirclePoly :=
  X (Sum.inr 0) ^ d (4, 0) * X (Sum.inr 1) ^ d (4, 1)

def clearDenominators (s : SeedSigns) (B : DegreeBound) (P : Poly) : CirclePoly :=
  ∑ d ∈ P.support, C (P.coeff d) * sheetMonomial d *
    ∏ j : Fin 4, (rawSeedNumerator s j 0 ^ d (j.castSucc, 0) *
      rawSeedNumerator s j 1 ^ d (j.castSucc, 1) *
      perSeedDenominator j ^ (B j - pairDegree d j))

theorem circle_variable_count : Fintype.card CircleVariable = 6 := by decide

theorem degreeBound_admissible (P : Poly) : Admissible (degreeBound P) P := by
  intro d hd j
  exact Finset.le_sup (f := fun d => pairDegree d j) hd

theorem perSeedDenominator_pos (y : CircleVariable → ℝ) (j : Fin 4) :
    0 < evalCircle y (perSeedDenominator j) := by
  simpa [evalCircle, perSeedDenominator] using denominator_pos (y (Sum.inl j))

theorem perSeedDenominator_at_least_one (y : CircleVariable → ℝ) (j : Fin 4) :
    1 ≤ evalCircle y (perSeedDenominator j) := by
  simpa [evalCircle, perSeedDenominator] using denominator_at_least_one (y (Sum.inl j))

theorem clearingDenominator_pos (B : DegreeBound) (y : CircleVariable → ℝ) :
    0 < evalCircle y (clearingDenominator B) := by
  simp only [clearingDenominator, evalCircle, eval₂_prod, eval₂_pow]
  exact Finset.prod_pos (fun j _ => pow_pos (perSeedDenominator_pos y j) _)

theorem clearingDenominator_at_least_one (B : DegreeBound) (y : CircleVariable → ℝ) :
    1 ≤ evalCircle y (clearingDenominator B) := by
  simp only [clearingDenominator, evalCircle, eval₂_prod, eval₂_pow]
  exact Finset.one_le_prod (fun j _ => one_le_pow₀ (perSeedDenominator_at_least_one y j))

theorem rawSeedNumerator_binding (s : SeedSigns) (t : SeedParameters)
    (z : ℂ) (j : Fin 4) (k : Fin 2) :
    evalCircle (chartPoint t z) (rawSeedNumerator s j k) =
      evalCircle (chartPoint t z) (perSeedDenominator j) *
        seedPoint (circleSeed s t) z (j.castSucc, k) := by
  have hsign : (SharedRationalIncidence.signValueQ (s j) : ℝ) = signValue (s j) := by
    cases s j <;> norm_num [SharedRationalIncidence.signValueQ, signValue]
  have hd : 1 + t j ^ 2 ≠ 0 := ne_of_gt (denominator_pos (t j))
  fin_cases k <;>
    simp [rawSeedNumerator, perSeedDenominator, chartPoint, evalCircle, hsign,
      seedPoint, circleSeed, signedCircle, circlePoint, Complex.mul_re, Complex.mul_im] <;>
    field_simp

theorem monomial_split (d : Variable →₀ ℕ) (x : Variable → ℝ) :
    (∏ i ∈ d.support, x i ^ d i) =
      (x (4, 0) ^ d (4, 0) * x (4, 1) ^ d (4, 1)) *
        ∏ j : Fin 4, (x (j.castSucc, 0) ^ d (j.castSucc, 0) *
          x (j.castSucc, 1) ^ d (j.castSucc, 1)) := by
  classical
  have hf := Finsupp.prod_fintype d (fun i e => x i ^ e) (fun _ => pow_zero _)
  change (∏ i ∈ d.support, x i ^ d i) = _ at hf
  rw [hf, Fintype.prod_prod_type]
  simp_rw [Fin.prod_univ_two]
  rw [Fin.prod_univ_castSucc]
  exact mul_comm _ _

theorem scaled_pair (a b D : ℕ) (ha : a + b ≤ D) (q x y : ℝ) :
    ((q * x) ^ a * (q * y) ^ b) * q ^ (D - (a + b)) =
      q ^ D * (x ^ a * y ^ b) := by
  simp only [mul_pow]
  calc
    _ = (q ^ a * q ^ b * q ^ (D - (a+b))) * (x ^ a * y ^ b) := by ring
    _ = _ := by rw [← pow_add, ← pow_add, Nat.add_sub_of_le ha]

theorem clearDenominators_eval (s : SeedSigns) (B : DegreeBound) (P : Poly)
    (t : SeedParameters) (z : ℂ) (hB : Admissible B P) :
    evalCircle (chartPoint t z) (clearDenominators s B P) =
      evalCircle (chartPoint t z) (clearingDenominator B) *
        evalReal (seedPoint (circleSeed s t) z) P := by
  classical
  simp only [clearDenominators, evalCircle, eval₂_sum, eval₂_mul, eval₂_C,
    eval₂_prod, eval₂_pow]
  rw [evalReal, eval₂_eq (algebraMap ℚ ℝ) (seedPoint (circleSeed s t) z) P,
    Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro d hd
  change ((P.coeff d : ℚ) : ℝ) * evalCircle (chartPoint t z) (sheetMonomial d) *
    (∏ j : Fin 4, (evalCircle (chartPoint t z) (rawSeedNumerator s j 0) ^ d (j.castSucc,0) *
      evalCircle (chartPoint t z) (rawSeedNumerator s j 1) ^ d (j.castSucc,1) *
      evalCircle (chartPoint t z) (perSeedDenominator j) ^ (B j - pairDegree d j))) = _
  simp_rw [rawSeedNumerator_binding]
  have hpair (j : Fin 4) := scaled_pair (d (j.castSucc,0)) (d (j.castSucc,1))
    (B j) (hB d hd j) (evalCircle (chartPoint t z) (perSeedDenominator j))
    (seedPoint (circleSeed s t) z (j.castSucc,0))
    (seedPoint (circleSeed s t) z (j.castSucc,1))
  simp_rw [pairDegree, hpair]
  rw [Finset.prod_mul_distrib, monomial_split]
  have hs : evalCircle (chartPoint t z) (sheetMonomial d) =
      seedPoint (circleSeed s t) z (4,0) ^ d (4,0) *
      seedPoint (circleSeed s t) z (4,1) ^ d (4,1) := by
    simp [evalCircle, sheetMonomial, chartPoint, seedPoint]
  rw [hs]
  have hcast : (algebraMap ℚ ℝ) (P.coeff d) = ((P.coeff d : ℚ) : ℝ) := rfl
  simp only [clearingDenominator, eval₂_prod, eval₂_pow, evalCircle, hcast]
  ring

theorem clearDenominators_quotient (s : SeedSigns) (B : DegreeBound) (P : Poly)
    (t : SeedParameters) (z : ℂ) (hB : Admissible B P) :
    evalCircle (chartPoint t z) (clearDenominators s B P) /
      evalCircle (chartPoint t z) (clearingDenominator B) =
        evalReal (seedPoint (circleSeed s t) z) P := by
  rw [clearDenominators_eval s B P t z hB]
  exact mul_div_cancel_left₀ _ (ne_of_gt (clearingDenominator_pos B _))

structure CircleComplexPoly where
  re : CirclePoly
  im : CirclePoly

def CircleComplexPoly.eval (y : CircleVariable → ℝ) (P : CircleComplexPoly) : ℂ :=
  ⟨evalCircle y P.re, evalCircle y P.im⟩

def clearComplex (s : SeedSigns) (B : DegreeBound) (P : ComplexPoly) : CircleComplexPoly :=
  ⟨clearDenominators s B P.re, clearDenominators s B P.im⟩

def ComplexAdmissible (B : DegreeBound) (P : ComplexPoly) : Prop :=
  Admissible B P.re ∧ Admissible B P.im

theorem clearComplex_eval (s : SeedSigns) (B : DegreeBound) (P : ComplexPoly)
    (t : SeedParameters) (z : ℂ) (hB : ComplexAdmissible B P) :
    (clearComplex s B P).eval (chartPoint t z) =
      (evalCircle (chartPoint t z) (clearingDenominator B) : ℂ) *
        P.eval (seedPoint (circleSeed s t) z) := by
  apply Complex.ext
  · simpa [CircleComplexPoly.eval, clearComplex, ComplexPoly.eval] using
      clearDenominators_eval s B P.re t z hB.1
  · simpa [CircleComplexPoly.eval, clearComplex, ComplexPoly.eval] using
      clearDenominators_eval s B P.im t z hB.2

open Mub6.Classification.CompactCover
open FourierSeedBinding Hadamard6Extensions.FourierSide

def physicalChartPoint (H : Mat6) (side : Side) (t : SeedParameters) :
    CircleVariable → ℝ := chartPoint t (sideSheet (physicalSide H side))

/-- The exact point is tied to the selected actual matrix side, with no imposed
relationship between the horizontal and vertical sheets. -/
theorem physical_clear_polynomial {H : Mat6} (side : Side) (s : SeedSigns)
    (t : SeedParameters) (hseed : seedEntry H = circleSeed s t)
    (B : DegreeBound) (P : Poly) (hB : Admissible B P) :
    evalCircle (physicalChartPoint H side t) (clearDenominators s B P) =
      evalCircle (physicalChartPoint H side t) (clearingDenominator B) *
        evalReal (physicalPoint H side) P := by
  simpa only [physicalChartPoint, physicalPoint, hseed] using
    clearDenominators_eval s B P t (sideSheet (physicalSide H side)) hB

theorem physical_clear_complex {H : Mat6} (side : Side) (s : SeedSigns)
    (t : SeedParameters) (hseed : seedEntry H = circleSeed s t)
    (B : DegreeBound) (P : ComplexPoly) (hB : ComplexAdmissible B P) :
    (clearComplex s B P).eval (physicalChartPoint H side t) =
      (evalCircle (physicalChartPoint H side t) (clearingDenominator B) : ℂ) *
        P.eval (physicalPoint H side) := by
  simpa only [physicalChartPoint, physicalPoint, hseed] using
    clearComplex_eval s B P t (sideSheet (physicalSide H side)) hB

/-- All signs, both side sheets, every lambda index, and zero lifted denominators
are retained. The factor below is only the positive circle clearing factor. -/
theorem physical_clear_residual {H : Mat6} (hH : NormalizedGoodSideCarrier H)
    (side : Side) (s : SeedSigns) (t : SeedParameters)
    (hseed : seedEntry H = circleSeed s t) (B : DegreeBound) (a b : ℚ) (i : Fin 3)
    (hB : ComplexAdmissible B (residualPoly side a b i)) :
    (clearComplex s B (residualPoly side a b i)).eval (physicalChartPoint H side t) =
      (evalCircle (physicalChartPoint H side t) (clearingDenominator B) : ℂ) *
        (FourierGramNumerators.numerator (sideS (physicalSide H side))
          (sideT (physicalSide H side)) (sideR (physicalSide H side)) i -
        RadicalIntervals.rationalCenter a b * liftedDenominator (sideS (physicalSide H side))
          (sideT (physicalSide H side)) (sideR (physicalSide H side))
          (sideSheet (physicalSide H side)) i) := by
  rw [physical_clear_complex side s t hseed B _ hB, physical_residual hH]

theorem physical_clear_denominator {H : Mat6} (hH : NormalizedGoodSideCarrier H)
    (side : Side) (s : SeedSigns) (t : SeedParameters)
    (hseed : seedEntry H = circleSeed s t) (B : DegreeBound) (i : Fin 3)
    (hB : ComplexAdmissible B (denominatorPoly side i)) :
    (clearComplex s B (denominatorPoly side i)).eval (physicalChartPoint H side t) =
      (evalCircle (physicalChartPoint H side t) (clearingDenominator B) : ℂ) *
        liftedDenominator (sideS (physicalSide H side)) (sideT (physicalSide H side))
          (sideR (physicalSide H side)) (sideSheet (physicalSide H side)) i := by
  rw [physical_clear_complex side s t hseed B _ hB, physical_denominator hH]

theorem physical_clear_zero_iff {H : Mat6} (side : Side) (s : SeedSigns)
    (t : SeedParameters) (hseed : seedEntry H = circleSeed s t)
    (B : DegreeBound) (P : ComplexPoly) (hB : ComplexAdmissible B P) :
    (clearComplex s B P).eval (physicalChartPoint H side t) = 0 ↔
      P.eval (physicalPoint H side) = 0 := by
  rw [physical_clear_complex side s t hseed B P hB, mul_eq_zero]
  have hc : (evalCircle (physicalChartPoint H side t) (clearingDenominator B) : ℂ) ≠ 0 := by
    exact_mod_cast ne_of_gt (clearingDenominator_pos B (physicalChartPoint H side t))
  simp only [hc, false_or]

/-- A single four-circle chart covers the seed for both actual side points. -/
theorem physical_common_chart_cover {H : Mat6} (hH : NormalizedGoodSideCarrier H) :
    ∃ s : SeedSigns, ∃ t : SeedParameters, InSeedCube t ∧
      seedEntry H = circleSeed s t ∧
      ∀ (side : Side) (B : DegreeBound) (P : Poly), Admissible B P →
        evalCircle (physicalChartPoint H side t) (clearDenominators s B P) =
          evalCircle (physicalChartPoint H side t) (clearingDenominator B) *
            evalReal (physicalPoint H side) P := by
  obtain ⟨s,t,ht,hs⟩ := seed_four_circle_cover hH.1
  exact ⟨s,t,ht,hs,fun side B P hB => physical_clear_polynomial side s t hs B P hB⟩

#print axioms Mub6.Classification.FourCircleResidualSubstitution.circle_variable_count
#print axioms Mub6.Classification.FourCircleResidualSubstitution.degreeBound_admissible
#print axioms Mub6.Classification.FourCircleResidualSubstitution.clearingDenominator_pos
#print axioms Mub6.Classification.FourCircleResidualSubstitution.clearingDenominator_at_least_one
#print axioms Mub6.Classification.FourCircleResidualSubstitution.rawSeedNumerator_binding
#print axioms Mub6.Classification.FourCircleResidualSubstitution.monomial_split
#print axioms Mub6.Classification.FourCircleResidualSubstitution.scaled_pair
#print axioms Mub6.Classification.FourCircleResidualSubstitution.clearDenominators_eval
#print axioms Mub6.Classification.FourCircleResidualSubstitution.clearDenominators_quotient
#print axioms Mub6.Classification.FourCircleResidualSubstitution.clearComplex_eval
#print axioms Mub6.Classification.FourCircleResidualSubstitution.physical_clear_polynomial
#print axioms Mub6.Classification.FourCircleResidualSubstitution.physical_clear_complex
#print axioms Mub6.Classification.FourCircleResidualSubstitution.physical_clear_residual
#print axioms Mub6.Classification.FourCircleResidualSubstitution.physical_clear_denominator
#print axioms Mub6.Classification.FourCircleResidualSubstitution.physical_clear_zero_iff
#print axioms Mub6.Classification.FourCircleResidualSubstitution.physical_common_chart_cover
end
end Mub6.Classification.FourCircleResidualSubstitution
