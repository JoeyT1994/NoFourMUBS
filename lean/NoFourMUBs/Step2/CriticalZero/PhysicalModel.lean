import NoFourMUBs.Step2.CriticalZero.ActualSignatures
import NoFourMUBs.Step2.FourierModelBridge

/-! The archive strip predicates in the current, already checked matrix model.
The source extraction and exact model substitutions are recorded in
CRITICAL_STRIP_MODEL_REUSE_REVIEW.json. -/

open Hadamard6
noncomputable section
namespace NoFourMUBs.Step2.Critical

def front (j : Fin 3) : Fin 6 := j.castAdd 3

theorem front_injective : Function.Injective front := by
  intro a b h
  apply Fin.ext
  exact congrArg (fun x : Fin 6 => x.val) h

def sideS (A : Mat3) : ℂ := FourierPhysicalSide.s (A 1 0) (A 1 1) (A 1 2)
def sideT (A : Mat3) : ℂ := FourierPhysicalSide.t (A 2 0) (A 2 1) (A 2 2)
def sideR (A : Mat3) : ℂ :=
  FourierPhysicalSide.r (A 1 0) (A 1 1) (A 1 2) (A 2 0) (A 2 1) (A 2 2)

def NormalizedCarrier (H : OAI.MUB6.CMatrix) : Prop :=
  OAI.MUB6.IsHadamard H ∧ (∀ j, H 0 j = 1) ∧ (∀ i, H i 0 = 1)

/-- A current all-critical matrix in the OAI coordinate convention. -/
def AllCriticalCarrier (H : OAI.MUB6.CMatrix) : Prop :=
  NormalizedCarrier H ∧ ∃ K : Had6,
    FourierBridge.toOAI K.1 = H ∧ NoFourMUBs.Step2.AllCritical K

theorem normalized_toOAI {H : Had6} (hD : Dephased H.1) :
    NormalizedCarrier (FourierBridge.toOAI H.1) := by
  refine ⟨FourierBridge.hadamard_toOAI H.2, ?_, ?_⟩
  · intro j
    change H.1 (.inl 0) (FourierBridge.coordinates.symm j) = 1
    exact hD.1 _
  · intro i
    change H.1 (FourierBridge.coordinates.symm i) (.inl 0) = 1
    exact hD.2 _

theorem allCritical_toOAI {H : Had6} (hH : NoFourMUBs.Step2.AllCritical H)
    (hD : Dephased H.1) : AllCriticalCarrier (FourierBridge.toOAI H.1) :=
  ⟨normalized_toOAI hD, H, rfl, hH⟩

end NoFourMUBs.Step2.Critical

namespace CriticalPhysical20261003
open NoFourMUBs.Step2.Critical

def sideP (A : Hadamard6.Mat3) : ℝ := momentP (sideS A) (sideT A) (sideR A)
def sideJ (A : Hadamard6.Mat3) : ℝ := momentJ (sideS A) (sideT A) (sideR A)
def sideW (A : Hadamard6.Mat3) : ℝ := momentW (sideS A) (sideT A) (sideR A)

theorem side_eta_nonnegative {A : Hadamard6.Mat3}
    (hA : ∀ i j, Complex.normSq (A i j) = 1) :
    0 ≤ FourierGramNumerators.eta (sideS A) (sideT A) (sideR A) :=
  unit_side_eta_nonnegative (A 1 0) (A 1 1) (A 1 2) (A 2 0) (A 2 1) (A 2 2)
    (hA 1 0) (hA 1 1) (hA 1 2) (hA 2 0) (hA 2 1) (hA 2 2)

/-- The checked selected-frame identity supplies the legacy strip input. -/
theorem allCritical_selected_R_zero {H : OAI.MUB6.CMatrix}
    (hH : AllCriticalCarrier H) (c : Fin 3 → Fin 6) (hc : Function.Injective c) :
    CriticalScalarReduction20261003.R
      (sideP (H.submatrix front c)) (sideJ (H.submatrix front c))
      (sideW (H.submatrix front c)) = 0 := by
  rcases hH with ⟨hN, K, rfl, hK⟩
  have hr := NoFourMUBs.Step2.FourierBridge.coordinates.symm.injective.comp front_injective
  have hcol := NoFourMUBs.Step2.FourierBridge.coordinates.symm.injective.comp hc
  have h0 : ∀ j, K.1 (NoFourMUBs.Step2.FourierBridge.coordinates.symm (front 0))
      (NoFourMUBs.Step2.FourierBridge.coordinates.symm (c j)) = 1 :=
    fun j => hN.2.1 (c j)
  have h := allCritical_submatrix_scalar_zero hK
    (fun i => NoFourMUBs.Step2.FourierBridge.coordinates.symm (front i))
    (fun j => NoFourMUBs.Step2.FourierBridge.coordinates.symm (c j)) hr hcol h0
  simpa [sideP, sideJ, sideW, sideS, sideT, sideR,
    NoFourMUBs.Step2.FourierBridge.toOAI, Matrix.submatrix,
    NoFourMUBs.Side.sS, NoFourMUBs.Side.rS,
    FourierPhysicalSide.s, FourierPhysicalSide.t, FourierPhysicalSide.r,
    Complex.star_def] using h

#print axioms side_eta_nonnegative
#print axioms allCritical_selected_R_zero
end CriticalPhysical20261003

#print axioms NoFourMUBs.Step2.Critical.front_injective
#print axioms NoFourMUBs.Step2.Critical.normalized_toOAI
#print axioms NoFourMUBs.Step2.Critical.allCritical_toOAI
