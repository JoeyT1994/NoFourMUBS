import LiftedFiniteNecessary

/-! Rational polynomial inequalities retain the quantitative guards for each
Fourier side. These are necessary, and do not replace sheet/lambda/physical data. -/
namespace Mub6.Classification.LiftedAdmissibility
open Mub6 Mub6.Numerical Mub6.Classification.CompactCover Mub6.Classification.FourPhase
open Mub6.Classification.PoleAtlas FourierSeedBinding
open Hadamard6Extensions.FourierSide Hadamard6Extensions.FourPhaseFourierBridge
open Mub6.Classification.LiftedAtlasPolynomial SharedRationalIncidence
open MvPolynomial Matrix
noncomputable section

/-- These five polynomials are nonnegative; normSq(delta) is separately strict. -/
def sideBoundPolynomial (S : SidePolys) : Fin 5 → CarrierPoly Variable :=
  ![normSqPoly (pivotPoly S) - C (81/10),
    normSqPoly (cubePoly S.tau) - C (1/1000),
    normSqPoly S.tau - C (1/10),
    1 - normSqPoly S.tau,
    C 10 - normSqPoly S.itau]

def PolynomialSideGuards (p : Variable → ℝ) (S : SidePolys) : Prop :=
  0 < evalReal p (normSqPoly S.delta) ∧ ∀ j, 0 ≤ evalReal p (sideBoundPolynomial S j)

theorem polynomialSideGuards_iff (p : Variable → ℝ) (S : SidePolys) :
    PolynomialSideGuards p S ↔
      CPoly.value p S.delta ≠ 0 ∧
      (81/10 : ℝ) ≤ Complex.normSq (sidePivot (CPoly.value p S.s)
        (CPoly.value p S.t) (CPoly.value p S.W) (CPoly.value p S.delta)) ∧
      (1/1000 : ℝ) ≤ Complex.normSq (CPoly.value p S.tau ^ 3) ∧
      (1/10 : ℝ) ≤ Complex.normSq (CPoly.value p S.tau) ∧
      Complex.normSq (CPoly.value p S.tau) ≤ 1 ∧
      Complex.normSq (CPoly.value p S.itau) ≤ 10 := by
  have hv (P : Poly) : evalReal p (normSqPoly P) = Complex.normSq (CPoly.value p P) :=
    eval_normSqPoly p P
  have hsub (P Q : CarrierPoly Variable) : evalReal p (P-Q) = evalReal p P - evalReal p Q := by
    simp [evalReal]
  have hc (q : ℚ) : evalReal p (C q) = (q : ℝ) := by simp [evalReal]
  have h1 : evalReal p (1 : CarrierPoly Variable) = 1 := by simp [evalReal]
  simp only [PolynomialSideGuards, sideBoundPolynomial, Fin.forall_fin_succ,
    Matrix.cons_val_zero, Matrix.cons_val_succ, hsub, hv, hc, h1,
    value_pivotPoly, value_cubePoly, sub_nonneg, Complex.normSq_pos]
  norm_num

/-- Exact guard transport: cube equations replace the radicand by tau cubed;
the inverse coordinate replaces the final reciprocal norm bound. -/
theorem guards_of_reconstruction (p : Variable → ℝ) (S : SidePolys)
    (h : SideReconstructionData (CPoly.value p S.s) (CPoly.value p S.t)
      (CPoly.value p S.u) (CPoly.value p S.v) (CPoly.value p S.r)
      (CPoly.value p S.W) (CPoly.value p S.delta) (CPoly.value p S.tau))
    (hi : CPoly.value p S.itau = (CPoly.value p S.tau)⁻¹)
    (hp : (81/10 : ℝ) ≤ Complex.normSq (sidePivot (CPoly.value p S.s)
      (CPoly.value p S.t) (CPoly.value p S.W) (CPoly.value p S.delta)))
    (hr : (1/1000 : ℝ) ≤ Complex.normSq (sideRadicand
      (CPoly.value p S.s) (CPoly.value p S.t) (CPoly.value p S.u)
      (CPoly.value p S.v) (CPoly.value p S.r) (CPoly.value p S.W) (CPoly.value p S.delta)))
    (hl : (1/10 : ℝ) ≤ Complex.normSq (CPoly.value p S.tau))
    (hu : Complex.normSq (CPoly.value p S.tau) ≤ 1)
    (hinv : Complex.normSq (CPoly.value p S.tau)⁻¹ ≤ 10) :
    PolynomialSideGuards p S := by
  apply (polynomialSideGuards_iff p S).mpr
  refine ⟨h.delta_ne_zero,hp,?_,hl,hu,?_⟩
  · rwa [h.cube_eq]
  · simpa [hi, map_inv₀] using hinv

theorem atlas_horizontal_inequalities (a b c d : ℂ) (LB LC : Fin 3 → ℂ) (tag : LiftedTag)
    (hG : LiftedCarrierGuards a b c d LB LC tag) :
    PolynomialSideGuards (point (atlasValues a b c d LB LC tag)) horizontalData := by
  have hg := hG.1.2.2
  have hz := atlas_horizontal_equations a b c d LB LC tag hG
  have hd : CPoly.value (point (atlasValues a b c d LB LC tag)) horizontalData.delta ≠ 0 := by
    simpa [horizontalData, atlasValues] using hg.1.delta_ne_zero
  have hrec := ((sideEquations_reconstruction_iff _ _ hd).mp hz).1
  apply guards_of_reconstruction _ _ hrec
  · simp [horizontalData, atlasValues]
  · simpa [horizontalData, atlasValues, rowS, rowT] using hg.2.1
  · simpa [horizontalData, atlasValues, rowS, rowT, radicandFromLambda] using hg.2.2.1
  · simpa [horizontalData, atlasValues] using hg.2.2.2.1
  · simpa [horizontalData, atlasValues] using hg.2.2.2.2.1
  · simpa [horizontalData, atlasValues] using hg.2.2.2.2.2

theorem atlas_vertical_inequalities (a b c d : ℂ) (LB LC : Fin 3 → ℂ) (tag : LiftedTag)
    (hG : LiftedCarrierGuards a b c d LB LC tag) :
    PolynomialSideGuards (point (atlasValues a b c d LB LC tag)) verticalData := by
  have hg := hG.2.2.2
  have hz := atlas_vertical_equations a b c d LB LC tag hG
  have hd : CPoly.value (point (atlasValues a b c d LB LC tag)) verticalData.delta ≠ 0 := by
    simpa [verticalData, atlasValues] using hg.1.delta_ne_zero
  have hrec := ((sideEquations_reconstruction_iff _ _ hd).mp hz).1
  apply guards_of_reconstruction _ _ hrec
  · simp [verticalData, atlasValues]
  · simpa [verticalData, atlasValues, rowS, rowT] using hg.2.1
  · simpa [verticalData, atlasValues, rowS, rowT, radicandFromLambda] using hg.2.2.1
  · simpa [verticalData, atlasValues] using hg.2.2.2.1
  · simpa [verticalData, atlasValues] using hg.2.2.2.2.1
  · simpa [verticalData, atlasValues] using hg.2.2.2.2.2

/-- A fully explicit semialgebraic *necessary part* of the actual hybrid lift. -/
theorem hybrid_necessary_system (a b c d : ℂ) (tag : LiftedTag)
    (maskB maskC : PoleMask) (FB : ActivePole maskB → ℂ) (FC : ActivePole maskC → ℂ)
    (hG : HybridGuards a b c d tag maskB maskC FB FC)
    (hF : NormalizedGoodSideCarrier (hybridCarrier a b c d tag maskB maskC FB FC)) :
    let p := point (hybridValues a b c d tag maskB maskC FB FC)
    NecessaryZeros p ∧ PolynomialSideGuards p horizontalData ∧
      PolynomialSideGuards p verticalData := by
  exact ⟨hybrid_necessary_equations _ _ _ _ _ _ _ _ _ hG hF,
    atlas_horizontal_inequalities _ _ _ _ _ _ _ hG,
    atlas_vertical_inequalities _ _ _ _ _ _ _ hG⟩

#print axioms Mub6.Classification.LiftedAdmissibility.polynomialSideGuards_iff
#print axioms Mub6.Classification.LiftedAdmissibility.guards_of_reconstruction
#print axioms Mub6.Classification.LiftedAdmissibility.atlas_horizontal_inequalities
#print axioms Mub6.Classification.LiftedAdmissibility.atlas_vertical_inequalities
#print axioms Mub6.Classification.LiftedAdmissibility.hybrid_necessary_system
end
end Mub6.Classification.LiftedAdmissibility
