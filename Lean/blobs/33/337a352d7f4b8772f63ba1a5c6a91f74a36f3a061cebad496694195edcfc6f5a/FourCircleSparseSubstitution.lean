import FourCircleResidualSubstitution

/-! Sparse-list clearing avoids normalizing the support of an abstract
MvPolynomial. Producer coefficients are accepted only through polynomial
identities, the original checked residual identity, and finite degree bounds. -/
namespace Mub6.Classification.FourCircleResidualSubstitution
open MvPolynomial
open Mub6.Numerical Mub6.Numerical.CircleCharts
open Mub6.Classification.FourPhase Mub6.Classification.PoleAtlas
open Mub6.Classification.SharedResidualPolynomials
open Mub6.Classification.SparsePolynomialIntervals
open scoped BigOperators
noncomputable section

def powersExponent : List (Variable × ℕ) → Variable →₀ ℕ
  | [] => 0
  | (i,n) :: rest => Finsupp.single i n + powersExponent rest

def termExponent (term : Term Variable) : Variable →₀ ℕ := powersExponent term.powers

def clearTerm (s : SeedSigns) (B : DegreeBound) (term : Term Variable) : CirclePoly :=
  let d := termExponent term
  C term.coefficient * sheetMonomial d *
    ∏ j : Fin 4, (rawSeedNumerator s j 0 ^ d (j.castSucc, 0) *
      rawSeedNumerator s j 1 ^ d (j.castSucc, 1) *
      perSeedDenominator j ^ (B j - pairDegree d j))

def clearProgram (s : SeedSigns) (B : DegreeBound) : Program Variable → CirclePoly
  | [] => 0
  | term :: rest => clearTerm s B term + clearProgram s B rest

def ProgramAdmissible (B : DegreeBound) (S : Program Variable) : Prop :=
  ∀ term ∈ S, ∀ j, pairDegree (termExponent term) j ≤ B j

theorem powersValue_exponent (x : Variable → ℝ) (ps : List (Variable × ℕ)) :
    powersValue x ps = ∏ i ∈ (powersExponent ps).support, x i ^ powersExponent ps i := by
  induction ps with
  | nil => simp [powersValue, powersExponent]
  | cons head rest ih =>
      rcases head with ⟨i,n⟩
      change x i ^ n * powersValue x rest =
        (Finsupp.single i n + powersExponent rest).prod (fun j e => x j ^ e)
      rw [Finsupp.prod_add_index' (fun _ => pow_zero _) (fun _ _ _ => pow_add _ _ _)]
      rw [Finsupp.prod_single_index (h := fun j e => x j ^ e) (a := i) (b := n) (pow_zero _)]
      exact congrArg (fun r => x i ^ n * r) ih

theorem clearTerm_eval (s : SeedSigns) (B : DegreeBound) (term : Term Variable)
    (t : SeedParameters) (z : ℂ)
    (hB : ∀ j, pairDegree (termExponent term) j ≤ B j) :
    evalCircle (chartPoint t z) (clearTerm s B term) =
      evalCircle (chartPoint t z) (clearingDenominator B) *
        termValue (seedPoint (circleSeed s t) z) term := by
  let d := termExponent term
  simp only [clearTerm, evalCircle, eval₂_mul, eval₂_C, eval₂_prod, eval₂_pow]
  change (term.coefficient : ℝ) * evalCircle (chartPoint t z) (sheetMonomial d) *
    (∏ j : Fin 4, (evalCircle (chartPoint t z) (rawSeedNumerator s j 0) ^ d (j.castSucc,0) *
      evalCircle (chartPoint t z) (rawSeedNumerator s j 1) ^ d (j.castSucc,1) *
      evalCircle (chartPoint t z) (perSeedDenominator j) ^ (B j - pairDegree d j))) = _
  simp_rw [rawSeedNumerator_binding]
  have hpair (j : Fin 4) := scaled_pair (d (j.castSucc,0)) (d (j.castSucc,1))
    (B j) (hB j) (evalCircle (chartPoint t z) (perSeedDenominator j))
    (seedPoint (circleSeed s t) z (j.castSucc,0))
    (seedPoint (circleSeed s t) z (j.castSucc,1))
  simp_rw [pairDegree, hpair]
  rw [Finset.prod_mul_distrib]
  have hs : evalCircle (chartPoint t z) (sheetMonomial d) =
      seedPoint (circleSeed s t) z (4,0) ^ d (4,0) *
      seedPoint (circleSeed s t) z (4,1) ^ d (4,1) := by
    simp [evalCircle, sheetMonomial, chartPoint, seedPoint]
  rw [hs, termValue, powersValue_exponent, monomial_split]
  simp only [clearingDenominator, eval₂_prod, eval₂_pow, evalCircle, d, termExponent]
  ring

theorem clearProgram_eval (s : SeedSigns) (B : DegreeBound) (S : Program Variable)
    (t : SeedParameters) (z : ℂ) (hB : ProgramAdmissible B S) :
    evalCircle (chartPoint t z) (clearProgram s B S) =
      evalCircle (chartPoint t z) (clearingDenominator B) *
        programValue (seedPoint (circleSeed s t) z) S := by
  induction S with
  | nil => simp [clearProgram, evalCircle, programValue]
  | cons term rest ih =>
      have ht := clearTerm_eval s B term t z (hB term (by simp))
      have hr := ih (fun q hq => hB q (by simp [hq]))
      simpa only [clearProgram, evalCircle, eval₂_add, programValue, mul_add] using congrArg₂ (·+·) ht hr

/-- This bridge requires the checked old sparse program's identity with the
actual residual-ring polynomial; arbitrary producer coefficients receive no credit. -/
theorem clearProgram_represents (s : SeedSigns) (B : DegreeBound) (S : Program Variable)
    (P : Poly) (hP : programPolynomial S = P) (hB : ProgramAdmissible B S)
    (t : SeedParameters) (z : ℂ) :
    evalCircle (chartPoint t z) (clearProgram s B S) =
      evalCircle (chartPoint t z) (clearingDenominator B) *
        evalReal (seedPoint (circleSeed s t) z) P := by
  rw [clearProgram_eval s B S t z hB, ← hP]
  simp only [evalReal, programPolynomial_eval]

/-- Checked exact factorization can remove excess positive circle factors.
Both the cleared output and its scale must have the SAME checked factor. -/
theorem cancelledProgram_represents (s : SeedSigns) (B : DegreeBound)
    (S : Program Variable) (P : Poly) (hP : programPolynomial S = P)
    (hB : ProgramAdmissible B S) (out : Program CircleVariable) (F Q : CirclePoly)
    (hpoly : F * programPolynomial out = clearProgram s B S)
    (hscale : F * Q = clearingDenominator B)
    (t : SeedParameters) (z : ℂ) (hF : evalCircle (chartPoint t z) F ≠ 0) :
    evalCircle (chartPoint t z) (programPolynomial out) =
      evalCircle (chartPoint t z) Q * evalReal (seedPoint (circleSeed s t) z) P := by
  have he := clearProgram_represents s B S P hP hB t z
  rw [← hpoly, ← hscale] at he
  simp only [evalCircle, eval₂_mul, mul_assoc] at he
  exact mul_left_cancel₀ hF he

#print axioms Mub6.Classification.FourCircleResidualSubstitution.powersValue_exponent
#print axioms Mub6.Classification.FourCircleResidualSubstitution.clearTerm_eval
#print axioms Mub6.Classification.FourCircleResidualSubstitution.clearProgram_eval
#print axioms Mub6.Classification.FourCircleResidualSubstitution.clearProgram_represents
#print axioms Mub6.Classification.FourCircleResidualSubstitution.cancelledProgram_represents
end
end Mub6.Classification.FourCircleResidualSubstitution
