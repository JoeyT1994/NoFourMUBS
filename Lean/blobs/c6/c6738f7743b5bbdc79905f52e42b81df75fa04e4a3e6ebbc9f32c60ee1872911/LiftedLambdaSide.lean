import ExplicitComplexRoots
import GramSideData
import FourierGoodBridge

/-! Necessary side reconstruction from the three actual unit lambda phases.
The numerator equations and physical binding retain all zero denominators. -/
namespace Mub6.Classification.PoleAtlas
open Hadamard6Extensions.FourierSide Hadamard6Extensions.FourPhaseRoots
open Hadamard6Extensions.FourPhaseGram Hadamard6Extensions.FourPhaseFourierBridge
noncomputable section

def lambdaU (L : Fin 3 → ℂ) : ℂ := L 0 / L 1
def lambdaV (L : Fin 3 → ℂ) : ℂ := L 0 / L 2
def lambdaW (z : ℂ) (L : Fin 3 → ℂ) : ℂ := z * L 0

def liftedDenominator (s t r z : ℂ) (i : Fin 3) : ℂ :=
  (FourierGramNumerators.g s t r : ℂ) + z * (FourierGramNumerators.q s t r i : ℂ)

def LambdaEquations (s t r z : ℂ) (L : Fin 3 → ℂ) : Prop :=
  ∀ i, FourierGramNumerators.numerator s t r i = liftedDenominator s t r z i * L i

def actualLambda (x y : Fin 3 → ℂ) : Fin 3 → ℂ :=
  FourierPhysicalSide.physicalLambda (x 0) (x 1) (x 2) (y 0) (y 1) (y 2)

def actualSheet (x y : Fin 3 → ℂ) : ℂ :=
  FourierPhysicalSide.physicalSheet (x 0) (x 1) (x 2) (y 0) (y 1) (y 2)

/-- Actual lifted phases, moments, and polynomial factor identities, with no
nonpole premise. -/
theorem actual_lambda_binding (x y : Fin 3 → ℂ) (hx : IsPhase3 x) (hy : IsPhase3 y)
    (hD : (actualSide x y).det ≠ 0) :
    IsPhase3 (actualLambda x y) ∧
    lambdaU (actualLambda x y) = prod3 x ∧
    lambdaV (actualLambda x y) = prod3 y ∧
    lambdaW (actualSheet x y) (actualLambda x y) = permanentSide x y ∧
    LambdaEquations (sum3 x) (sum3 y) (cross3 x y) (actualSheet x y) (actualLambda x y) := by
  have hd : FourierPhysicalSide.determinant (x 0) (x 1) (x 2) (y 0) (y 1) (y 2) ≠ 0 := by
    simpa only [FourierPhysicalSide.determinant, scalar_side_eq] using hD
  have hp := FourierPhysicalSide.physicalLambda_row_products
    (x 0) (x 1) (x 2) (y 0) (y 1) (y 2)
    (hx 0) (hx 1) (hx 2) (hy 0) (hy 1) (hy 2) hd
  refine ⟨?_, hp.1, hp.2, ?_, ?_⟩
  · intro i
    exact FourierPhysicalSide.physicalLambda_phase
      (x 0) (x 1) (x 2) (y 0) (y 1) (y 2) i
      (hx 0) (hx 1) (hx 2) (hy 0) (hy 1) (hy 2) hd
  · rw [← scalar_permanent_eq]
    exact FourierPhysicalSide.physicalSheet_lambda0_permanent
      (x 0) (x 1) (x 2) (y 0) (y 1) (y 2)
      (hx 0) (hx 1) (hx 2) (hy 0) (hy 1) (hy 2) hd
  · intro i
    exact FourierPhysicalSide.physical_numerators_factor
      (x 0) (x 1) (x 2) (y 0) (y 1) (y 2) i
      (hx 0) (hx 1) (hx 2) (hy 0) (hy 1) (hy 2) hd

def deltaFromLambda (s t z : ℂ) (L : Fin 3 → ℂ) (deltaSign : Bool) : ℂ :=
  signedSquareRoot deltaSign
    ((sideGamma s t (lambdaW z L))^2 -
      4 * sideAlpha s (lambdaU L) * sideAlpha t (lambdaV L))

def radicandFromLambda (s t r z : ℂ) (L : Fin 3 → ℂ) (deltaSign : Bool) : ℂ :=
  sideRadicand s t (lambdaU L) (lambdaV L) r (lambdaW z L)
    (deltaFromLambda s t z L deltaSign)

def tauFromLambda (s t r z : ℂ) (L : Fin 3 → ℂ) (deltaSign : Bool) : ℂ :=
  cubeRoot (radicandFromLambda s t r z L deltaSign)

def explicitSideFromLambda (s t r z : ℂ) (L : Fin 3 → ℂ)
    (deltaSign : Bool) : Matrix (Fin 3) (Fin 3) ℂ :=
  reconstructedSide s t (lambdaU L) (lambdaV L) r (lambdaW z L)
    (deltaFromLambda s t z L deltaSign) (tauFromLambda s t r z L deltaSign) omega

def LiftedSideGuards (s t r z : ℂ) (L : Fin 3 → ℂ) (deltaSign : Bool) : Prop :=
  SideReconstructionData s t (lambdaU L) (lambdaV L) r (lambdaW z L)
    (deltaFromLambda s t z L deltaSign) (tauFromLambda s t r z L deltaSign) ∧
  (81/10 : ℝ) ≤ Complex.normSq (sidePivot s t (lambdaW z L)
    (deltaFromLambda s t z L deltaSign)) ∧
  (1/1000 : ℝ) ≤ Complex.normSq (radicandFromLambda s t r z L deltaSign) ∧
  (1/10 : ℝ) ≤ Complex.normSq (tauFromLambda s t r z L deltaSign) ∧
  Complex.normSq (tauFromLambda s t r z L deltaSign) ≤ 1 ∧
  Complex.normSq (tauFromLambda s t r z L deltaSign)⁻¹ ≤ 10

theorem tauFromLambda_cube (s t r z : ℂ) (L : Fin 3 → ℂ) (b : Bool) :
    tauFromLambda s t r z L b ^ 3 = radicandFromLambda s t r z L b :=
  cubeRoot_cube _

/-- Each physical good side is one of the two orientation choices from its
actual sheet and actual lambda phases, modulo a side-column permutation. -/
theorem actual_good_side_lifted_cover (x y : Fin 3 → ℂ)
    (hx : IsPhase3 x) (hy : IsPhase3 y)
    (hg : (54/5 : ℝ) ≤ Complex.normSq (actualSide x y).det) :
    ∃ deltaSign : Bool, ∃ p : Equiv.Perm (Fin 3),
      actualSide x y = (fun i j =>
        explicitSideFromLambda (sum3 x) (sum3 y) (cross3 x y)
          (actualSheet x y) (actualLambda x y) deltaSign i (p j)) ∧
      LiftedSideGuards (sum3 x) (sum3 y) (cross3 x y)
        (actualSheet x y) (actualLambda x y) deltaSign := by
  have hD : (actualSide x y).det ≠ 0 := by
    intro hz
    norm_num [hz] at hg
  obtain ⟨_, hu, hv, hW, _⟩ := actual_lambda_binding x y hx hy hD
  have hcover := actual_good_side_scalar_cover x y omega omega_quadratic hx hy hg
  rw [← hu, ← hv, ← hW] at hcover
  obtain ⟨delta, ⟨tau0, hdata⟩, hh, hT, hrec⟩ := hcover
  obtain ⟨b, hb⟩ := square_roots_exhaustive hdata.delta_square
  change delta = deltaFromLambda (sum3 x) (sum3 y) (actualSheet x y) (actualLambda x y) b at hb
  rw [hb] at hh hT hrec
  obtain ⟨hd, hlo, hhi, hi, p, hp⟩ := hrec
    (tauFromLambda (sum3 x) (sum3 y) (cross3 x y) (actualSheet x y) (actualLambda x y) b)
    (tauFromLambda_cube _ _ _ _ _ _)
  refine ⟨b, p.symm, ?_, hd, hh, hT, hlo, hhi, hi⟩
  ext i j
  have he := congrArg (fun M : Matrix (Fin 3) (Fin 3) ℂ => M i (p.symm j)) hp
  simpa only [explicitSideFromLambda, Equiv.apply_symm_apply] using he.symm

/-- The two finite Gram sheet signs remain independent of the orientation
sign. This complete necessary cover also applies at a rational pole. -/
theorem actual_good_side_signed_lifted_cover (x y : Fin 3 → ℂ)
    (hx : IsPhase3 x) (hy : IsPhase3 y)
    (hg : (54/5 : ℝ) ≤ Complex.normSq (actualSide x y).det) :
    ∃ sheetSign deltaSign : Bool, ∃ p : Equiv.Perm (Fin 3),
      IsPhase3 (actualLambda x y) ∧
      actualSheet x y = zeta (sum3 x) (sum3 y) (cross3 x y) sheetSign ∧
      actualSide x y = (fun i j => explicitSideFromLambda (sum3 x) (sum3 y) (cross3 x y)
        (zeta (sum3 x) (sum3 y) (cross3 x y) sheetSign) (actualLambda x y) deltaSign i (p j)) ∧
      LiftedSideGuards (sum3 x) (sum3 y) (cross3 x y)
        (zeta (sum3 x) (sum3 y) (cross3 x y) sheetSign) (actualLambda x y) deltaSign ∧
      LambdaEquations (sum3 x) (sum3 y) (cross3 x y)
        (zeta (sum3 x) (sum3 y) (cross3 x y) sheetSign) (actualLambda x y) := by
  have hD : (actualSide x y).det ≠ 0 := by
    intro hz
    norm_num [hz] at hg
  obtain ⟨a, ha⟩ := actual_sheet_choice x y hx hy hD
  obtain ⟨b, p, hp, hg⟩ := actual_good_side_lifted_cover x y hx hy hg
  have hl := actual_lambda_binding x y hx hy hD
  change actualSheet x y = _ at ha
  rw [ha] at hp hg
  exact ⟨a, b, p, hl.1, ha, hp, hg, ha ▸ hl.2.2.2.2⟩

#check actual_lambda_binding
#print axioms actual_lambda_binding
#check tauFromLambda_cube
#print axioms tauFromLambda_cube
#check actual_good_side_lifted_cover
#print axioms actual_good_side_lifted_cover
#check actual_good_side_signed_lifted_cover
#print axioms actual_good_side_signed_lifted_cover

end
end Mub6.Classification.PoleAtlas
