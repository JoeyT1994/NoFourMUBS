import LiftedSideEquations

/-! A concrete finite necessary polynomial system on the existing carrier lift.
All equations are rational polynomials in Fin 20 × Bool. This is deliberately
not a complete physical admissibility system: lambda/sheet and physical filters
are retained in the forward theorem, not asserted to follow from these zeros. -/
namespace Mub6.Classification.LiftedAdmissibility
open Mub6 Mub6.Numerical Mub6.Classification.CompactCover Mub6.Classification.FourPhase
open Mub6.Classification.PoleAtlas FourierSeedBinding
open Hadamard6Extensions.FourierSide Hadamard6Extensions.FourPhaseFourierBridge
open Mub6.Classification.LiftedAtlasPolynomial SharedRationalIncidence
open MvPolynomial Matrix
noncomputable section

def normSqPoly (P : Poly) : CarrierPoly Variable := P.re * P.re + P.im * P.im

theorem eval_normSqPoly (p : Variable → ℝ) (P : Poly) :
    evalReal p (normSqPoly P) = Complex.normSq (CPoly.value p P) := by
  simp [normSqPoly, evalReal, CPoly.value, Complex.normSq_apply]

def phaseCoordinates : Fin 8 → Fin 20 := ![0,1,2,3,4,5,11,12]
def phaseEquations (i : Fin 8) : CarrierPoly Variable :=
  normSqPoly (z (phaseCoordinates i)) - 1

theorem phaseEquations_iff (v : Fin 20 → ℂ) :
    (∀ i, evalReal (point v) (phaseEquations i) = 0) ↔
      ∀ i, Complex.normSq (v (phaseCoordinates i)) = 1 := by
  simp [phaseEquations, evalReal, normSqPoly, z, CPoly.coord, point, Complex.normSq_apply,
    sub_eq_zero]

def determinantPoly (A : Poly3) : Poly :=
  A 0 0 * A 1 1 * A 2 2 + A 0 1 * A 1 2 * A 2 0 + A 0 2 * A 1 0 * A 2 1 -
    A 0 2 * A 1 1 * A 2 0 - A 0 1 * A 1 0 * A 2 2 - A 0 0 * A 1 2 * A 2 1

theorem value_determinantPoly (p : Variable → ℝ) (A : Poly3) :
    CPoly.value p (determinantPoly A) = (eval3 p A).det := by
  simp [determinantPoly, Matrix.det_fin_three, eval3]
  ring

/-- The only ambient reciprocal is Gram determinant; omega remains algebraic. -/
def globalEquations : Fin 2 → Poly :=
  ![determinantPoly (gramPoly seedPoly) * z 19 - 1, z 18*z 18 + z 18 + 1]

theorem globalEquations_iff (v : Fin 20 → ℂ) :
    RealZeros (point v) globalEquations ↔
      (CompactCover.gram (seed (v 0) (v 1) (v 2) (v 3))).det * v 19 = 1 ∧
      v 18 ^ 2 + v 18 + 1 = 0 := by
  rw [realZeros_iff]
  simp [globalEquations, Fin.forall_fin_succ, value_determinantPoly, pow_two,
    sub_eq_zero]

/-- 28 scalar equations: 8 circle, 16 side, and 4 global components. -/
abbrev NecessaryIndex := Sum (Fin 8) (Sum ((Bool × Fin 4) × Bool) (Fin 2 × Bool))
def necessaryEquation : NecessaryIndex → CarrierPoly Variable
  | .inl i => phaseEquations i
  | .inr (.inl i) => realEquation bothSideEquations i
  | .inr (.inr i) => realEquation globalEquations i

def NecessaryZeros (p : Variable → ℝ) : Prop := ∀ i, evalReal p (necessaryEquation i) = 0

theorem necessary_equation_count : Fintype.card NecessaryIndex = 28 := by
  simp [NecessaryIndex, Fintype.card_sum, Fintype.card_prod]

theorem necessaryZeros_iff (p : Variable → ℝ) :
    NecessaryZeros p ↔
      (∀ i, evalReal p (phaseEquations i) = 0) ∧
      RealZeros p bothSideEquations ∧ RealZeros p globalEquations := by
  constructor
  · intro h
    exact ⟨fun i => h (.inl i), fun i => h (.inr (.inl i)), fun i => h (.inr (.inr i))⟩
  · rintro ⟨hp,hs,hg⟩ (i | (i | i))
    · exact hp i
    · exact hs i
    · exact hg i

theorem atlas_horizontal_equations (a b c d : ℂ) (LB LC : Fin 3 → ℂ) (tag : LiftedTag)
    (hG : LiftedCarrierGuards a b c d LB LC tag) :
    RealZeros (point (atlasValues a b c d LB LC tag)) (sideEquations horizontalData) := by
  have hh := hG.1.2.2.1
  have hd : CPoly.value (point (atlasValues a b c d LB LC tag)) horizontalData.delta ≠ 0 := by
    simpa [horizontalData, atlasValues] using hh.delta_ne_zero
  apply (sideEquations_reconstruction_iff _ _ hd).mpr
  refine ⟨?_,?_,?_⟩
  · simpa [horizontalData, atlasValues, rowS, rowT] using hh
  · simpa [horizontalData, atlasValues] using mul_inv_cancel₀ hh.tau_ne_zero
  · simpa [horizontalData, atlasValues, rowS, rowT] using mul_inv_cancel₀ hh.pivot_ne_zero

theorem atlas_vertical_equations (a b c d : ℂ) (LB LC : Fin 3 → ℂ) (tag : LiftedTag)
    (hG : LiftedCarrierGuards a b c d LB LC tag) :
    RealZeros (point (atlasValues a b c d LB LC tag)) (sideEquations verticalData) := by
  have hh := hG.2.2.2.1
  have hd : CPoly.value (point (atlasValues a b c d LB LC tag)) verticalData.delta ≠ 0 := by
    simpa [verticalData, atlasValues] using hh.delta_ne_zero
  apply (sideEquations_reconstruction_iff _ _ hd).mpr
  refine ⟨?_,?_,?_⟩
  · simpa [verticalData, atlasValues, rowS, rowT] using hh
  · simpa [verticalData, atlasValues] using mul_inv_cancel₀ hh.tau_ne_zero
  · simpa [verticalData, atlasValues, rowS, rowT] using mul_inv_cancel₀ hh.pivot_ne_zero

theorem atlas_phase_equations (a b c d : ℂ) (LB LC : Fin 3 → ℂ) (tag : LiftedTag)
    (hG : LiftedCarrierGuards a b c d LB LC tag)
    (hF : NormalizedGoodSideCarrier (liftedCarrier a b c d LB LC tag)) :
    ∀ i, evalReal (point (atlasValues a b c d LB LC tag)) (phaseEquations i) = 0 := by
  apply (phaseEquations_iff _).mpr
  have he : GoodMinor.northwest (liftedCarrier a b c d LB LC tag) = seed a b c d := by
    unfold liftedCarrier reconstructedCarrier
    exact (blockCarrier_blocks _ _ _ _).1
  have hs0 : ∀ i j, IsPhase (seed a b c d i j) := by
    intro i j
    rw [← he]
    exact hF.1.1 (GoodMinor.front i) (GoodMinor.front j)
  have hs : IsPhase a ∧ IsPhase b ∧ IsPhase c ∧ IsPhase d :=
    ⟨hs0 1 1, hs0 1 2, hs0 2 1, hs0 2 2⟩
  have hBu : Complex.normSq (lambdaU LB) = 1 := by
    simp [lambdaU, map_div₀, hG.1.1 0, hG.1.1 1]
  have hBv : Complex.normSq (PoleAtlas.lambdaV LB) = 1 := by
    simp [PoleAtlas.lambdaV, map_div₀, hG.1.1 0, hG.1.1 2]
  have hCu : Complex.normSq (lambdaU LC) = 1 := by
    simp [lambdaU, map_div₀, hG.2.1 0, hG.2.1 1]
  have hCv : Complex.normSq (PoleAtlas.lambdaV LC) = 1 := by
    simp [PoleAtlas.lambdaV, map_div₀, hG.2.1 0, hG.2.1 2]
  intro i
  fin_cases i
  · simpa [phaseCoordinates, atlasValues, FourierSeedBinding.IsPhase] using hs.1
  · simpa [phaseCoordinates, atlasValues, FourierSeedBinding.IsPhase] using hs.2.1
  · simpa [phaseCoordinates, atlasValues, FourierSeedBinding.IsPhase] using hs.2.2.1
  · simpa [phaseCoordinates, atlasValues, FourierSeedBinding.IsPhase] using hs.2.2.2
  · simpa [phaseCoordinates, atlasValues] using hBu
  · simpa [phaseCoordinates, atlasValues] using hBv
  · simpa [phaseCoordinates, atlasValues] using hCu
  · simpa [phaseCoordinates, atlasValues] using hCv

theorem atlas_global_equations (a b c d : ℂ) (LB LC : Fin 3 → ℂ) (tag : LiftedTag)
    (hF : NormalizedGoodSideCarrier (liftedCarrier a b c d LB LC tag)) :
    RealZeros (point (atlasValues a b c d LB LC tag)) globalEquations := by
  apply (globalEquations_iff _).mpr
  constructor
  · simpa [atlasValues] using mul_inv_cancel₀ (lifted_seed_gram_ne_zero a b c d LB LC tag hF)
  · simpa [atlasValues] using Hadamard6Extensions.FourPhaseRoots.omega_quadratic

/-- All physical lifted atlas points satisfy these concrete polynomial zeros. -/
theorem atlas_necessary_equations (a b c d : ℂ) (LB LC : Fin 3 → ℂ) (tag : LiftedTag)
    (hG : LiftedCarrierGuards a b c d LB LC tag)
    (hF : NormalizedGoodSideCarrier (liftedCarrier a b c d LB LC tag)) :
    NecessaryZeros (point (atlasValues a b c d LB LC tag)) := by
  apply (necessaryZeros_iff _).mpr
  exact ⟨atlas_phase_equations a b c d LB LC tag hG hF,
    (bothSideEquations_iff _).mpr ⟨atlas_horizontal_equations a b c d LB LC tag hG,
      atlas_vertical_equations a b c d LB LC tag hG⟩,
    atlas_global_equations a b c d LB LC tag hF⟩

/-- Exact masks, tags, free-pole inputs and physical filter remain hypotheses;
no branch is removed by the new finite necessary system. -/
theorem hybrid_necessary_equations (a b c d : ℂ) (tag : LiftedTag)
    (maskB maskC : PoleMask) (FB : ActivePole maskB → ℂ) (FC : ActivePole maskC → ℂ)
    (hG : HybridGuards a b c d tag maskB maskC FB FC)
    (hF : NormalizedGoodSideCarrier (hybridCarrier a b c d tag maskB maskC FB FC)) :
    NecessaryZeros (point (hybridValues a b c d tag maskB maskC FB FC)) :=
  atlas_necessary_equations _ _ _ _ _ _ _ hG hF

/-- Reverse algebraic assembly under the finite equations, with no assertion
that the reconstructed block matrix is physically admissible. -/
theorem necessaryZeros_carrier_binding (v : Fin 20 → ℂ)
    (h : NecessaryZeros (point v)) :
    (fun r k => CPoly.value (point v) (carrierPoly r k)) =
      reconstructedCarrier (seed (v 0) (v 1) (v 2) (v 3))
        (reconstructedSide (rowS (v 0) (v 1)) (rowT (v 2) (v 3))
          (v 4) (v 5) (rowR (v 0) (v 1) (v 2) (v 3)) (v 6) (v 7) (v 8) (v 18))
        (reconstructedSide (rowS (v 0) (v 2)) (rowT (v 1) (v 3))
          (v 11) (v 12) (rowR (v 0) (v 2) (v 1) (v 3)) (v 13) (v 14) (v 15) (v 18))ᵀ := by
  obtain ⟨_,hs,hg⟩ := (necessaryZeros_iff _).mp h
  obtain ⟨hB,hC⟩ := (bothSideEquations_iff _).mp hs
  have he := carrierPoly_binding v ((globalEquations_iff _).mp hg).1
  have hb := sideEquations_side_binding (point v) horizontalData (z 18) hB
  have hc := sideEquations_side_binding (point v) verticalData (z 18) hC
  have hb' : eval3 (point v) horizontalPoly = reconstructedSide
      (rowS (v 0) (v 1)) (rowT (v 2) (v 3)) (v 4) (v 5)
      (rowR (v 0) (v 1) (v 2) (v 3)) (v 6) (v 7) (v 8) (v 18) := by
    simpa [horizontalData, horizontalPoly, rowS, rowT] using hb
  have hc' : eval3 (point v) verticalPoly = reconstructedSide
      (rowS (v 0) (v 2)) (rowT (v 1) (v 3)) (v 11) (v 12)
      (rowR (v 0) (v 2) (v 1) (v 3)) (v 13) (v 14) (v 15) (v 18) := by
    simpa [verticalData, verticalPoly, rowS, rowT] using hc
  rwa [hb',hc'] at he

#print axioms Mub6.Classification.LiftedAdmissibility.eval_normSqPoly
#print axioms Mub6.Classification.LiftedAdmissibility.phaseEquations_iff
#print axioms Mub6.Classification.LiftedAdmissibility.value_determinantPoly
#print axioms Mub6.Classification.LiftedAdmissibility.globalEquations_iff
#print axioms Mub6.Classification.LiftedAdmissibility.necessary_equation_count
#print axioms Mub6.Classification.LiftedAdmissibility.necessaryZeros_iff
#print axioms Mub6.Classification.LiftedAdmissibility.atlas_horizontal_equations
#print axioms Mub6.Classification.LiftedAdmissibility.atlas_vertical_equations
#print axioms Mub6.Classification.LiftedAdmissibility.atlas_phase_equations
#print axioms Mub6.Classification.LiftedAdmissibility.atlas_global_equations
#print axioms Mub6.Classification.LiftedAdmissibility.atlas_necessary_equations
#print axioms Mub6.Classification.LiftedAdmissibility.hybrid_necessary_equations
#print axioms Mub6.Classification.LiftedAdmissibility.necessaryZeros_carrier_binding
end
end Mub6.Classification.LiftedAdmissibility
