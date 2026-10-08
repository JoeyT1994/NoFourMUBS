import RationalPolynomialSubstitution
import LiftedAtlasPhysical

/-! Substitute the four signed rational circle charts into the shared seed
of the actual lifted carrier. All 32 auxiliary real coordinates are retained.
One explicitly positive common denominator clears every carrier entry. -/
namespace Mub6.Classification.FourCircleCarrierSubstitution
open Mub6 Mub6.Numerical Mub6.Numerical.CircleCharts
open Mub6.Classification.FourPhase Mub6.Classification.PoleAtlas
open LiftedAtlasPolynomial SharedRationalIncidence RationalPolynomialSubstitution
open MvPolynomial
open scoped BigOperators
noncomputable section

abbrev AuxiliaryVariable := { i : LiftedAtlasPolynomial.Variable // 4 ≤ i.1.val }
abbrev CircleVariable := Fin 4 ⊕ AuxiliaryVariable
abbrev CirclePoly := CarrierPoly CircleVariable

def chartPoint (t : SeedParameters) (p : LiftedAtlasPolynomial.Variable → ℝ) :
    CircleVariable → ℝ := Sum.elim t (fun i => p i.val)

def substitutedPoint (s : SeedSigns) (t : SeedParameters)
    (p : LiftedAtlasPolynomial.Variable → ℝ) : LiftedAtlasPolynomial.Variable → ℝ :=
  fun i => if hi : i.1.val < 4 then
    if i.2 then (signedCircle (s ⟨i.1.val, hi⟩) (t ⟨i.1.val, hi⟩)).im
    else (signedCircle (s ⟨i.1.val, hi⟩) (t ⟨i.1.val, hi⟩)).re
  else p i

def circleDenominator : CirclePoly := ∏ j : Fin 4, (1 + X (Sum.inl j) ^ 2)
def omittedDenominator (j : Fin 4) : CirclePoly :=
  ∏ k ∈ Finset.univ.erase j, (1 + X (Sum.inl k) ^ 2)
def seedNumerator (s : SeedSigns) (j : Fin 4) (imaginary : Bool) : CirclePoly :=
  C (signValueQ (s j)) *
    (if imaginary then 2 * X (Sum.inl j) else 1 - X (Sum.inl j) ^ 2) *
    omittedDenominator j
def coordinateNumerator (s : SeedSigns) (i : LiftedAtlasPolynomial.Variable) : CirclePoly :=
  if hi : i.1.val < 4 then seedNumerator s ⟨i.1.val, hi⟩ i.2
  else circleDenominator * X (Sum.inr ⟨i, Nat.le_of_not_lt hi⟩)

theorem auxiliary_variable_count : Fintype.card AuxiliaryVariable = 32 := by decide
theorem circle_variable_count : Fintype.card CircleVariable = 36 := by
  rw [Fintype.card_sum, auxiliary_variable_count]
  decide

theorem circleDenominator_eval (t : SeedParameters)
    (p : LiftedAtlasPolynomial.Variable → ℝ) :
    evalReal (chartPoint t p) circleDenominator = ∏ j : Fin 4, (1 + t j ^ 2) := by
  simp [evalReal, chartPoint, circleDenominator]

theorem circleDenominator_pos (y : CircleVariable → ℝ) :
    0 < evalReal y circleDenominator := by
  simp only [circleDenominator, evalReal, eval₂_prod, eval₂_add, eval₂_one,
    eval₂_pow, eval₂_X]
  exact Finset.prod_pos (fun j _ => denominator_pos (y (Sum.inl j)))

theorem circleDenominator_at_least_one (y : CircleVariable → ℝ) :
    1 ≤ evalReal y circleDenominator := by
  simp only [circleDenominator, evalReal, eval₂_prod, eval₂_add, eval₂_one,
    eval₂_pow, eval₂_X]
  exact Finset.one_le_prod (fun j _ => denominator_at_least_one (y (Sum.inl j)))

theorem seedNumerator_binding (s : SeedSigns) (t : SeedParameters)
    (p : LiftedAtlasPolynomial.Variable → ℝ) (j : Fin 4) (b : Bool) :
    evalReal (chartPoint t p) (seedNumerator s j b) =
      evalReal (chartPoint t p) circleDenominator *
        (if b then (signedCircle (s j) (t j)).im else (signedCircle (s j) (t j)).re) := by
  have hprod : (∏ k ∈ Finset.univ.erase j, (1 + t k ^ 2)) * (1 + t j ^ 2) =
      ∏ k : Fin 4, (1 + t k ^ 2) :=
    Finset.prod_erase_mul Finset.univ (fun k => 1 + t k ^ 2) (Finset.mem_univ j)
  have hsign : (signValueQ (s j) : ℝ) = signValue (s j) := by
    cases s j <;> norm_num [signValueQ, signValue]
  rw [circleDenominator_eval, ← hprod]
  have hd : 1 + t j ^ 2 ≠ 0 := ne_of_gt (denominator_pos (t j))
  cases b <;>
    simp [seedNumerator, omittedDenominator, chartPoint, evalReal, hsign,
      signedCircle, circlePoint, Complex.mul_re, Complex.mul_im] <;>
    field_simp

theorem coordinateNumerator_binding (s : SeedSigns) (t : SeedParameters)
    (p : LiftedAtlasPolynomial.Variable → ℝ) (i : LiftedAtlasPolynomial.Variable) :
    evalReal (chartPoint t p) (coordinateNumerator s i) =
      evalReal (chartPoint t p) circleDenominator * substitutedPoint s t p i := by
  by_cases hi : i.1.val < 4
  · simp only [coordinateNumerator, substitutedPoint, dif_pos hi]
    exact seedNumerator_binding s t p ⟨i.1.val, hi⟩ i.2
  · simp only [coordinateNumerator, substitutedPoint, dif_neg hi]
    simp [evalReal, chartPoint]

abbrev EntryIndex := Fin 6 × Fin 6 × Bool
def entryPolynomial (i : EntryIndex) : CarrierPoly LiftedAtlasPolynomial.Variable :=
  if i.2.2 then carrierModel.numeratorIm i.1 i.2.1 else carrierModel.numeratorRe i.1 i.2.1
def carrierDegree : ℕ := Finset.univ.sup (fun i : EntryIndex => (entryPolynomial i).totalDegree)

theorem entry_degree_le (i : EntryIndex) : (entryPolynomial i).totalDegree ≤ carrierDegree := by
  unfold carrierDegree
  exact Finset.le_sup (f := fun i : EntryIndex => (entryPolynomial i).totalDegree) (Finset.mem_univ i)

def circleCarrierModel (s : SeedSigns) : SharedRationalIncidence.CarrierModel CircleVariable where
  denominator := circleDenominator ^ carrierDegree
  numeratorRe := fun r k => clearDenominators circleDenominator (coordinateNumerator s)
    carrierDegree (carrierModel.numeratorRe r k)
  numeratorIm := fun r k => clearDenominators circleDenominator (coordinateNumerator s)
    carrierDegree (carrierModel.numeratorIm r k)

theorem circleCarrierModel_denominator_pos (s : SeedSigns) (y : CircleVariable → ℝ) :
    0 < evalReal y (circleCarrierModel s).denominator := by
  change 0 < evalReal y (circleDenominator ^ carrierDegree)
  simpa only [evalReal, eval₂_pow] using pow_pos (circleDenominator_pos y) carrierDegree

theorem circleCarrierModel_denominator_at_least_one (s : SeedSigns) (y : CircleVariable → ℝ) :
    1 ≤ evalReal y (circleCarrierModel s).denominator := by
  change 1 ≤ evalReal y (circleDenominator ^ carrierDegree)
  simpa only [evalReal, eval₂_pow] using
    (one_le_pow₀ (circleDenominator_at_least_one y) : 1 ≤ evalReal y circleDenominator ^ carrierDegree)

/-- The frozen actual carrier model is composed with the four rational circle
charts before its correlated polynomials are evaluated. -/
theorem circleCarrierModel_represents (s : SeedSigns) (t : SeedParameters)
    (p : LiftedAtlasPolynomial.Variable → ℝ) (H : BasisMatrix)
    (hM : RepresentsAt carrierModel (substitutedPoint s t p) H) :
    RepresentsAt (circleCarrierModel s) (chartPoint t p) H := by
  constructor
  · intro r k
    have hd : (carrierModel.numeratorRe r k).totalDegree ≤ carrierDegree := by
      simpa only [entryPolynomial, Bool.false_eq_true, if_false] using entry_degree_le (r,k,false)
    have he := clearDenominators_eval circleDenominator (coordinateNumerator s)
      carrierDegree (carrierModel.numeratorRe r k) (substitutedPoint s t p)
      (chartPoint t p) (coordinateNumerator_binding s t p) hd
    have h := hM.1 r k
    rw [carrierModel_denominator, one_mul] at h
    rw [h] at he
    simpa only [circleCarrierModel, evalReal, eval₂_pow] using he
  · intro r k
    have hd : (carrierModel.numeratorIm r k).totalDegree ≤ carrierDegree := by
      simpa only [entryPolynomial, if_true] using entry_degree_le (r,k,true)
    have he := clearDenominators_eval circleDenominator (coordinateNumerator s)
      carrierDegree (carrierModel.numeratorIm r k) (substitutedPoint s t p)
      (chartPoint t p) (coordinateNumerator_binding s t p) hd
    have h := hM.2 r k
    rw [carrierModel_denominator, one_mul] at h
    rw [h] at he
    simpa only [circleCarrierModel, evalReal, eval₂_pow] using he

def seedIndex (j : Fin 4) : Fin 20 := ⟨j.val, lt_trans j.isLt (by decide)⟩

theorem substitutedPoint_eq_of_seed_chart (s : SeedSigns) (t : SeedParameters)
    (v : Fin 20 → ℂ) (hseed : ∀ j : Fin 4, v (seedIndex j) = circleSeed s t j) :
    substitutedPoint s t (point v) = point v := by
  funext i
  by_cases hi : i.1.val < 4
  · simp only [substitutedPoint, dif_pos hi, point]
    have h := hseed ⟨i.1.val, hi⟩
    have he : seedIndex ⟨i.1.val, hi⟩ = i.1 := Fin.ext rfl
    rw [he] at h
    cases hb : i.2
    · simpa only [Bool.false_eq_true, if_false, circleSeed] using (congrArg Complex.re h).symm
    · simpa only [if_true, circleSeed] using (congrArg Complex.im h).symm
  · simp only [substitutedPoint, dif_neg hi]

theorem hybridValues_seed_chart (a b c d : ℂ) (tag : LiftedTag)
    (maskB maskC : PoleMask) (FB : ActivePole maskB → ℂ) (FC : ActivePole maskC → ℂ)
    (s : SeedSigns) (t : SeedParameters)
    (hseed : (![a,b,c,d] : Fin 4 → ℂ) = circleSeed s t) :
    ∀ j : Fin 4, hybridValues a b c d tag maskB maskC FB FC (seedIndex j) = circleSeed s t j := by
  intro j
  have h := congrFun hseed j
  fin_cases j <;> simpa [seedIndex, hybridValues, atlasValues] using h

/-- Any shared polynomial in the actual lifted coordinates can be substituted
as one expression, before interval evaluation loses its internal correlations. -/
theorem actual_lift_polynomial_quotient (P : CarrierPoly LiftedAtlasPolynomial.Variable)
    (s : SeedSigns) (t : SeedParameters) (v : Fin 20 → ℂ)
    (hseed : ∀ j : Fin 4, v (seedIndex j) = circleSeed s t j) :
    evalReal (chartPoint t (point v))
      (clearDenominators circleDenominator (coordinateNumerator s) P.totalDegree P) /
      evalReal (chartPoint t (point v)) (circleDenominator ^ P.totalDegree) =
      evalReal (point v) P := by
  have h := clearDenominators_quotient circleDenominator (coordinateNumerator s)
    P.totalDegree P (substitutedPoint s t (point v)) (chartPoint t (point v))
    (coordinateNumerator_binding s t (point v)) (le_refl _)
    (ne_of_gt (circleDenominator_pos _))
  rwa [substitutedPoint_eq_of_seed_chart s t v hseed] at h

theorem hybrid_circleCarrierModel_represents (a b c d : ℂ) (tag : LiftedTag)
    (maskB maskC : PoleMask) (FB : ActivePole maskB → ℂ) (FC : ActivePole maskC → ℂ)
    (s : SeedSigns) (t : SeedParameters)
    (hseed : (![a,b,c,d] : Fin 4 → ℂ) = circleSeed s t)
    (hG : HybridGuards a b c d tag maskB maskC FB FC)
    (hF : CompactCover.NormalizedGoodSideCarrier (hybridCarrier a b c d tag maskB maskC FB FC)) :
    RepresentsAt (circleCarrierModel s)
      (chartPoint t (point (hybridValues a b c d tag maskB maskC FB FC)))
      (hybridCarrier a b c d tag maskB maskC FB FC) := by
  apply circleCarrierModel_represents
  rw [substitutedPoint_eq_of_seed_chart s t _
    (hybridValues_seed_chart a b c d tag maskB maskC FB FC s t hseed)]
  exact hybridCarrier_polynomial_represents a b c d tag maskB maskC FB FC hG hF

#print axioms Mub6.Classification.FourCircleCarrierSubstitution.auxiliary_variable_count
#print axioms Mub6.Classification.FourCircleCarrierSubstitution.circle_variable_count
#print axioms Mub6.Classification.FourCircleCarrierSubstitution.circleDenominator_eval
#print axioms Mub6.Classification.FourCircleCarrierSubstitution.circleDenominator_pos
#print axioms Mub6.Classification.FourCircleCarrierSubstitution.circleDenominator_at_least_one
#print axioms Mub6.Classification.FourCircleCarrierSubstitution.seedNumerator_binding
#print axioms Mub6.Classification.FourCircleCarrierSubstitution.coordinateNumerator_binding
#print axioms Mub6.Classification.FourCircleCarrierSubstitution.entry_degree_le
#print axioms Mub6.Classification.FourCircleCarrierSubstitution.circleCarrierModel_denominator_pos
#print axioms Mub6.Classification.FourCircleCarrierSubstitution.circleCarrierModel_denominator_at_least_one
#print axioms Mub6.Classification.FourCircleCarrierSubstitution.circleCarrierModel_represents
#print axioms Mub6.Classification.FourCircleCarrierSubstitution.substitutedPoint_eq_of_seed_chart
#print axioms Mub6.Classification.FourCircleCarrierSubstitution.hybridValues_seed_chart
#print axioms Mub6.Classification.FourCircleCarrierSubstitution.actual_lift_polynomial_quotient
#print axioms Mub6.Classification.FourCircleCarrierSubstitution.hybrid_circleCarrierModel_represents

end
end Mub6.Classification.FourCircleCarrierSubstitution
