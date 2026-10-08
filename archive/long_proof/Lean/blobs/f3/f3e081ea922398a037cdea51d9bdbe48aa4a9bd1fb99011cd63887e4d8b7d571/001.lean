import RayMvPolynomial
import ThirdBasisIncidence

/-! Joint polynomial incidence for a carrier with one shared parameter block.

The carrier entries have real polynomial numerators and one real polynomial
denominator.  Their binding to the actual carrier is an explicit hypothesis;
nonvanishing of that denominator is retained whenever equations are reversed.
The six signed ray charts use separate coordinate blocks, all coupled to the
same carrier parameters.  Physical phase-Hadamard conditions remain local.
-/
namespace Mub6.Classification.SharedParameterIncidence
open Mub6 Mub6.Numerical Mub6.Numerical.CircleCharts
open Mub6.Classification.Rays MvPolynomial
open scoped BigOperators
noncomputable section

abbrev CarrierPoly (σ : Type*) := MvPolynomial σ ℝ
abbrev JointVariable (σ : Type*) := σ ⊕ (Fin 6 × Fin 5)
abbrev JointPoly (σ : Type*) := MvPolynomial (JointVariable σ) ℝ
abbrev RayParameters := Fin 6 → Parameters
abbrev RaySigns := Fin 6 → SignChart

/-- A single denominator is shared by all entries and all six common rays. -/
structure CarrierModel (σ : Type*) where
  denominator : CarrierPoly σ
  numeratorRe : Fin 6 → Fin 6 → CarrierPoly σ
  numeratorIm : Fin 6 → Fin 6 → CarrierPoly σ

/-- Exact entry identities only; no physicality or denominator guard is hidden. -/
def RepresentsAt {σ : Type*} (M : CarrierModel σ) (p : σ → ℝ)
    (H : BasisMatrix) : Prop :=
  (∀ r k, eval p (M.numeratorRe r k) = eval p M.denominator * (H r k).re) ∧
  (∀ r k, eval p (M.numeratorIm r k) = eval p M.denominator * (H r k).im)

def jointPoint {σ : Type*} (p : σ → ℝ) (t : RayParameters) : JointVariable σ → ℝ :=
  Sum.elim p (fun a => t a.1 a.2)

def liftCarrier {σ : Type*} (P : CarrierPoly σ) : JointPoly σ :=
  rename Sum.inl P

def liftRay {σ : Type*} (j : Fin 6) (P : RayPoly) : JointPoly σ :=
  rename (fun a => Sum.inr (j,a)) P

theorem eval_liftCarrier {σ : Type*} (p : σ → ℝ) (t : RayParameters)
    (P : CarrierPoly σ) : eval (jointPoint p t) (liftCarrier P) = eval p P := by
  simp [liftCarrier, jointPoint, eval_rename]

theorem eval_liftRay {σ : Type*} (p : σ → ℝ) (t : RayParameters)
    (j : Fin 6) (P : RayPoly) :
    eval (jointPoint p t) (liftRay j P) = eval (t j) P := by
  simp [liftRay, jointPoint, eval_rename]

def jointAmplitudeRe {σ : Type*} (M : CarrierModel σ) (s : RaySigns)
    (j k : Fin 6) : JointPoly σ :=
  ∑ r, (liftCarrier (M.numeratorRe r k) * liftRay j (rayRePoly (s j) r) +
    liftCarrier (M.numeratorIm r k) * liftRay j (rayImPoly (s j) r))

def jointAmplitudeIm {σ : Type*} (M : CarrierModel σ) (s : RaySigns)
    (j k : Fin 6) : JointPoly σ :=
  ∑ r, (liftCarrier (M.numeratorRe r k) * liftRay j (rayImPoly (s j) r) -
    liftCarrier (M.numeratorIm r k) * liftRay j (rayRePoly (s j) r))

def jointResidual {σ : Type*} (M : CarrierModel σ) (s : RaySigns)
    (j : Fin 6) (k : Fin 5) : JointPoly σ :=
  jointAmplitudeRe M s j k.succ ^ 2 + jointAmplitudeIm M s j k.succ ^ 2 -
    6 * (liftCarrier M.denominator * liftRay j denominatorPoly) ^ 2

theorem jointAmplitudeRe_binding {σ : Type*} (M : CarrierModel σ)
    (p : σ → ℝ) (t : RayParameters) (s : RaySigns) (H : BasisMatrix)
    (hM : RepresentsAt M p H) (j k : Fin 6) :
    eval (jointPoint p t) (jointAmplitudeRe M s j k) =
      eval p M.denominator * rayDenominator (t j) *
        (carrierAmplitude H (chartRay (s j) (t j)) k).re := by
  calc
    _ = eval p M.denominator * clearedAmplitudeRe H (s j) (t j) k := by
      simp only [jointAmplitudeRe, map_sum, eval_add, eval_mul,
        eval_liftCarrier, eval_liftRay, eval_rayRePoly, eval_rayImPoly]
      rw [clearedAmplitudeRe, Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro r _
      rw [hM.1 r k, hM.2 r k]
      ring
    _ = _ := by rw [clearedAmplitudeRe_binding]; ring

theorem jointAmplitudeIm_binding {σ : Type*} (M : CarrierModel σ)
    (p : σ → ℝ) (t : RayParameters) (s : RaySigns) (H : BasisMatrix)
    (hM : RepresentsAt M p H) (j k : Fin 6) :
    eval (jointPoint p t) (jointAmplitudeIm M s j k) =
      eval p M.denominator * rayDenominator (t j) *
        (carrierAmplitude H (chartRay (s j) (t j)) k).im := by
  calc
    _ = eval p M.denominator * clearedAmplitudeIm H (s j) (t j) k := by
      simp only [jointAmplitudeIm, map_sum, eval_sub, eval_mul,
        eval_liftCarrier, eval_liftRay, eval_rayRePoly, eval_rayImPoly]
      rw [clearedAmplitudeIm, Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro r _
      rw [hM.1 r k, hM.2 r k]
      ring
    _ = _ := by rw [clearedAmplitudeIm_binding]; ring

/-- Exact polynomial-to-physical identity, valid even before a denominator
guard or the phase-Hadamard equations are imposed. -/
theorem jointResidual_binding {σ : Type*} (M : CarrierModel σ)
    (p : σ → ℝ) (t : RayParameters) (s : RaySigns) (H : BasisMatrix)
    (hM : RepresentsAt M p H) (j : Fin 6) (k : Fin 5) :
    eval (jointPoint p t) (jointResidual M s j k) =
      (eval p M.denominator * rayDenominator (t j)) ^ 2 * residual H (s j) (t j) k := by
  simp only [jointResidual, eval_sub, eval_add, eval_mul, eval_pow,
    map_ofNat, eval_liftCarrier, eval_liftRay, eval_denominatorPoly,
    jointAmplitudeRe_binding M p t s H hM, jointAmplitudeIm_binding M p t s H hM,
    residual, Complex.normSq_apply]
  ring

theorem jointResidual_zero_iff {σ : Type*} (M : CarrierModel σ)
    (p : σ → ℝ) (t : RayParameters) (s : RaySigns) (H : BasisMatrix)
    (hM : RepresentsAt M p H) (hq : eval p M.denominator ≠ 0)
    (j : Fin 6) (k : Fin 5) :
    eval (jointPoint p t) (jointResidual M s j k) = 0 ↔
      residual H (s j) (t j) k = 0 := by
  rw [jointResidual_binding M p t s H hM]
  have hd : (eval p M.denominator * rayDenominator (t j)) ^ 2 ≠ 0 :=
    pow_ne_zero 2 (mul_ne_zero hq (ne_of_gt (rayDenominator_pos (t j))))
  simp [mul_eq_zero, hd]

#print axioms eval_liftCarrier
#print axioms eval_liftRay
#print axioms jointAmplitudeRe_binding
#print axioms jointAmplitudeIm_binding
#print axioms jointResidual_binding
#print axioms jointResidual_zero_iff

end
end Mub6.Classification.SharedParameterIncidence
