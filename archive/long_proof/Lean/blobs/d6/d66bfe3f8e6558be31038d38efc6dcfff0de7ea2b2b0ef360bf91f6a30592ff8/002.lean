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
  rw [liftRay, eval_rename]
  rfl

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
    Rays.residual, Complex.normSq_apply]
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

def JointChartIncidence {σ : Type*} (M : CarrierModel σ) (p : σ → ℝ)
    (s : RaySigns) (t : RayParameters) (j : Fin 6) : Prop :=
  InCube (t j) ∧ ∀ k, eval (jointPoint p t) (jointResidual M s j k) = 0

theorem joint_chart_incidence_iff {σ : Type*} (M : CarrierModel σ)
    (p : σ → ℝ) (t : RayParameters) (s : RaySigns) (H : BasisMatrix)
    (hM : RepresentsAt M p H) (hq : eval p M.denominator ≠ 0) (j : Fin 6) :
    JointChartIncidence M p s t j ↔ ChartIncidence H (s j) (t j) := by
  simp only [JointChartIncidence, ChartIncidence,
    jointResidual_zero_iff M p t s H hM hq]

/-- Each column retains its raw phase normalization through the signed chart. -/
theorem joint_chart_incidence_sound {σ : Type*} (M : CarrierModel σ)
    (p : σ → ℝ) (t : RayParameters) (s : RaySigns) (H : BasisMatrix)
    (hM : RepresentsAt M p H) (hq : eval p M.denominator ≠ 0)
    (hH : PhaseHadamard H) (j : Fin 6) (hj : JointChartIncidence M p s t j) :
    IsRawCommonRay H (chartRay (s j) (t j)) :=
  chart_incidence_sound hH ((joint_chart_incidence_iff M p t s H hM hq j).mp hj)

def jointOverlapRe {σ : Type*} (s : RaySigns) (i j : Fin 6) : JointPoly σ :=
  ∑ r, (liftRay i (rayRePoly (s i) r) * liftRay j (rayRePoly (s j) r) +
    liftRay i (rayImPoly (s i) r) * liftRay j (rayImPoly (s j) r))

def jointOverlapIm {σ : Type*} (s : RaySigns) (i j : Fin 6) : JointPoly σ :=
  ∑ r, (liftRay i (rayRePoly (s i) r) * liftRay j (rayImPoly (s j) r) -
    liftRay i (rayImPoly (s i) r) * liftRay j (rayRePoly (s j) r))

theorem rawOverlap_re_formula (z w : Vector) :
    (rawOverlap z w).re = ∑ r, ((z r).re * (w r).re + (z r).im * (w r).im) := by
  change (carrierAmplitude (fun r _ => z r) w 0).re = _
  exact carrierAmplitude_re _ _ _

theorem rawOverlap_im_formula (z w : Vector) :
    (rawOverlap z w).im = ∑ r, ((z r).re * (w r).im - (z r).im * (w r).re) := by
  change (carrierAmplitude (fun r _ => z r) w 0).im = _
  exact carrierAmplitude_im _ _ _

theorem jointOverlapRe_binding {σ : Type*} (p : σ → ℝ) (t : RayParameters)
    (s : RaySigns) (i j : Fin 6) :
    eval (jointPoint p t) (jointOverlapRe s i j) =
      rayDenominator (t i) * rayDenominator (t j) *
        (rawOverlap (chartRay (s i) (t i)) (chartRay (s j) (t j))).re := by
  simp only [jointOverlapRe, map_sum, eval_add, eval_mul, eval_liftRay,
    eval_rayRePoly, eval_rayImPoly, clearedRayRe_binding, clearedRayIm_binding]
  rw [rawOverlap_re_formula, Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro r _
  ring

theorem jointOverlapIm_binding {σ : Type*} (p : σ → ℝ) (t : RayParameters)
    (s : RaySigns) (i j : Fin 6) :
    eval (jointPoint p t) (jointOverlapIm s i j) =
      rayDenominator (t i) * rayDenominator (t j) *
        (rawOverlap (chartRay (s i) (t i)) (chartRay (s j) (t j))).im := by
  simp only [jointOverlapIm, map_sum, eval_sub, eval_mul, eval_liftRay,
    eval_rayRePoly, eval_rayImPoly, clearedRayRe_binding, clearedRayIm_binding]
  rw [rawOverlap_im_formula, Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro r _
  ring

/-- Circle denominators are strictly positive for every real chart input,
so the overlap equations introduce no extra real roots. -/
theorem jointOverlap_zero_iff {σ : Type*} (p : σ → ℝ) (t : RayParameters)
    (s : RaySigns) (i j : Fin 6) :
    (eval (jointPoint p t) (jointOverlapRe s i j) = 0 ∧
      eval (jointPoint p t) (jointOverlapIm s i j) = 0) ↔
      rawOverlap (chartRay (s i) (t i)) (chartRay (s j) (t j)) = 0 := by
  rw [jointOverlapRe_binding, jointOverlapIm_binding]
  have hd : rayDenominator (t i) * rayDenominator (t j) ≠ 0 :=
    mul_ne_zero (ne_of_gt (rayDenominator_pos (t i)))
      (ne_of_gt (rayDenominator_pos (t j)))
  simp only [mul_eq_zero, hd, false_or]
  constructor
  · rintro ⟨hre, him⟩
    apply Complex.ext
    · simpa using hre
    · simpa using him
  · intro h
    simp [h]

/-- Thirty common-ray residuals and the real/imaginary orthogonality equations
all live in one polynomial ring with one shared carrier parameter block. -/
def JointBasisIncidence {σ : Type*} (M : CarrierModel σ) (p : σ → ℝ)
    (s : RaySigns) (t : RayParameters) : Prop :=
  (∀ j, JointChartIncidence M p s t j) ∧
    ∀ i j, i ≠ j →
      eval (jointPoint p t) (jointOverlapRe s i j) = 0 ∧
      eval (jointPoint p t) (jointOverlapIm s i j) = 0

theorem joint_basis_incidence_iff {σ : Type*} (M : CarrierModel σ)
    (p : σ → ℝ) (t : RayParameters) (s : RaySigns) (H : BasisMatrix)
    (hM : RepresentsAt M p H) (hq : eval p M.denominator ≠ 0) :
    JointBasisIncidence M p s t ↔ BasisIncidence H s t := by
  simp only [JointBasisIncidence, BasisIncidence,
    joint_chart_incidence_iff M p t s H hM hq, jointOverlap_zero_iff]

/-- Exact physical third-basis classification for the represented carrier.
Only the carrier at p must be a phase Hadamard; arbitrary model inputs need
not satisfy any physical equation. -/
theorem third_basis_joint_polynomial_iff {σ : Type*} (M : CarrierModel σ)
    (p : σ → ℝ) (H B : BasisMatrix) (hM : RepresentsAt M p H)
    (hq : eval p M.denominator ≠ 0) (hH : PhaseHadamard H) :
    RawThirdBasis H B ↔ ∃ s t, JointBasisIncidence M p s t ∧ B = chartBasis s t := by
  simp only [joint_basis_incidence_iff M p _ _ H hM hq]
  exact third_basis_chart_iff hH B

#print axioms eval_liftCarrier
#print axioms eval_liftRay
#print axioms jointAmplitudeRe_binding
#print axioms jointAmplitudeIm_binding
#print axioms jointResidual_binding
#print axioms jointResidual_zero_iff
#print axioms joint_chart_incidence_iff
#print axioms joint_chart_incidence_sound
#print axioms rawOverlap_re_formula
#print axioms rawOverlap_im_formula
#print axioms jointOverlapRe_binding
#print axioms jointOverlapIm_binding
#print axioms jointOverlap_zero_iff
#print axioms joint_basis_incidence_iff
#print axioms third_basis_joint_polynomial_iff

end
end Mub6.Classification.SharedParameterIncidence
