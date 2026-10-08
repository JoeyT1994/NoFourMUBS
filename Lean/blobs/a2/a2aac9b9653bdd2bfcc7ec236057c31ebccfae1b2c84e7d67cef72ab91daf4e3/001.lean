import SharedParameterIncidence

/-! Exact rational-coefficient incidence objects.  Coefficient mapping to the
existing real compiler proves their physical meaning without repeating its
normalization, Parseval, or third-basis arguments. -/
namespace Mub6.Classification.SharedRationalIncidence
open Mub6 Mub6.Numerical Mub6.Numerical.CircleCharts MvPolynomial
open scoped BigOperators
noncomputable section

abbrev CarrierPoly (σ : Type*) := MvPolynomial σ ℚ
abbrev RayPoly := MvPolynomial (Fin 5) ℚ
abbrev JointVariable (σ : Type*) := SharedParameterIncidence.JointVariable σ
abbrev JointPoly (σ : Type*) := MvPolynomial (JointVariable σ) ℚ
abbrev RayParameters := SharedParameterIncidence.RayParameters
abbrev RaySigns := SharedParameterIncidence.RaySigns

def castPoly {σ : Type*} : MvPolynomial σ ℚ →+* MvPolynomial σ ℝ :=
  MvPolynomial.map (algebraMap ℚ ℝ)

def evalReal {σ : Type*} (p : σ → ℝ) (P : MvPolynomial σ ℚ) : ℝ :=
  eval₂ (algebraMap ℚ ℝ) p P

theorem eval_castPoly {σ : Type*} (p : σ → ℝ) (P : MvPolynomial σ ℚ) :
    eval p (castPoly P) = evalReal p P :=
  eval_map (algebraMap ℚ ℝ) p P

/-- Exact evaluation at rational parameters agrees with real interpretation. -/
theorem evalReal_rational {σ : Type*} (p : σ → ℚ) (P : MvPolynomial σ ℚ) :
    evalReal (fun i => (p i : ℝ)) P = (eval p P : ℝ) := by
  simpa [evalReal, Function.comp_def] using
    (eval₂_comp (algebraMap ℚ ℝ) p P).symm

structure CarrierModel (σ : Type*) where
  denominator : CarrierPoly σ
  numeratorRe : Fin 6 → Fin 6 → CarrierPoly σ
  numeratorIm : Fin 6 → Fin 6 → CarrierPoly σ

def CarrierModel.toReal {σ : Type*} (M : CarrierModel σ) :
    SharedParameterIncidence.CarrierModel σ where
  denominator := castPoly M.denominator
  numeratorRe := fun r k => castPoly (M.numeratorRe r k)
  numeratorIm := fun r k => castPoly (M.numeratorIm r k)

def RepresentsAt {σ : Type*} (M : CarrierModel σ) (p : σ → ℝ)
    (H : BasisMatrix) : Prop :=
  (∀ r k, evalReal p (M.numeratorRe r k) = evalReal p M.denominator * (H r k).re) ∧
  (∀ r k, evalReal p (M.numeratorIm r k) = evalReal p M.denominator * (H r k).im)

theorem representsAt_toReal_iff {σ : Type*} (M : CarrierModel σ) (p : σ → ℝ)
    (H : BasisMatrix) :
    SharedParameterIncidence.RepresentsAt M.toReal p H ↔ RepresentsAt M p H := by
  simp only [SharedParameterIncidence.RepresentsAt, RepresentsAt,
    CarrierModel.toReal, eval_castPoly]

def rationalCarrier {σ : Type*} (M : CarrierModel σ) (p : σ → ℝ) : BasisMatrix :=
  SharedParameterIncidence.rationalCarrier M.toReal p

theorem rationalCarrier_representsAt {σ : Type*} (M : CarrierModel σ)
    (p : σ → ℝ) (hq : evalReal p M.denominator ≠ 0) :
    RepresentsAt M p (rationalCarrier M p) := by
  apply (representsAt_toReal_iff M p _).mp
  apply SharedParameterIncidence.rationalCarrier_representsAt
  simpa only [CarrierModel.toReal, eval_castPoly] using hq

def signValueQ (negative : Bool) : ℚ := if negative then -1 else 1

def denominatorPoly : RayPoly := ∏ j : Fin 5, (1 + X j ^ 2)

def omittedDenominatorPoly (j : Fin 5) : RayPoly :=
  ∏ i ∈ Finset.univ.erase j, (1 + X i ^ 2)

def rayRePoly (s : SignChart) : Fin 6 → RayPoly :=
  Fin.cases denominatorPoly (fun j =>
    C (signValueQ (s j)) * (1 - X j ^ 2) * omittedDenominatorPoly j)

def rayImPoly (s : SignChart) : Fin 6 → RayPoly :=
  Fin.cases 0 (fun j =>
    C (signValueQ (s j)) * (2 * X j) * omittedDenominatorPoly j)

theorem cast_denominatorPoly : castPoly denominatorPoly = Rays.denominatorPoly := by
  simp [castPoly, denominatorPoly, Rays.denominatorPoly]

theorem cast_omittedDenominatorPoly (j : Fin 5) :
    castPoly (omittedDenominatorPoly j) = Rays.omittedDenominatorPoly j := by
  simp [castPoly, omittedDenominatorPoly, Rays.omittedDenominatorPoly]

theorem cast_rayRePoly (s : SignChart) (r : Fin 6) :
    castPoly (rayRePoly s r) = Rays.rayRePoly s r := by
  refine Fin.cases ?_ (fun j => ?_) r
  · exact cast_denominatorPoly
  · simp [castPoly, rayRePoly, Rays.rayRePoly, omittedDenominatorPoly,
      Rays.omittedDenominatorPoly, signValueQ, signValue]

theorem cast_rayImPoly (s : SignChart) (r : Fin 6) :
    castPoly (rayImPoly s r) = Rays.rayImPoly s r := by
  refine Fin.cases ?_ (fun j => ?_) r
  · simp [castPoly, rayImPoly, Rays.rayImPoly]
  · simp [castPoly, rayImPoly, Rays.rayImPoly, omittedDenominatorPoly,
      Rays.omittedDenominatorPoly, signValueQ, signValue]

abbrev jointPoint {σ : Type*} (p : σ → ℝ) (t : RayParameters) : JointVariable σ → ℝ :=
  SharedParameterIncidence.jointPoint p t

def liftCarrier {σ : Type*} (P : CarrierPoly σ) : JointPoly σ :=
  rename Sum.inl P

def liftRay {σ : Type*} (j : Fin 6) (P : RayPoly) : JointPoly σ :=
  rename (fun a => Sum.inr (j,a)) P

theorem cast_liftCarrier {σ : Type*} (P : CarrierPoly σ) :
    castPoly (liftCarrier P) = SharedParameterIncidence.liftCarrier (castPoly P) :=
  map_rename (algebraMap ℚ ℝ) Sum.inl P

theorem cast_liftRay {σ : Type*} (j : Fin 6) (P : RayPoly) :
    castPoly (liftRay (σ := σ) j P) = SharedParameterIncidence.liftRay j (castPoly P) :=
  map_rename (algebraMap ℚ ℝ) (fun a => Sum.inr (j,a)) P

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

def jointOverlapRe {σ : Type*} (s : RaySigns) (i j : Fin 6) : JointPoly σ :=
  ∑ r, (liftRay i (rayRePoly (s i) r) * liftRay j (rayRePoly (s j) r) +
    liftRay i (rayImPoly (s i) r) * liftRay j (rayImPoly (s j) r))

def jointOverlapIm {σ : Type*} (s : RaySigns) (i j : Fin 6) : JointPoly σ :=
  ∑ r, (liftRay i (rayRePoly (s i) r) * liftRay j (rayImPoly (s j) r) -
    liftRay i (rayImPoly (s i) r) * liftRay j (rayRePoly (s j) r))

theorem cast_jointAmplitudeRe {σ : Type*} (M : CarrierModel σ) (s : RaySigns)
    (j k : Fin 6) : castPoly (jointAmplitudeRe M s j k) =
      SharedParameterIncidence.jointAmplitudeRe M.toReal s j k := by
  simp only [jointAmplitudeRe, SharedParameterIncidence.jointAmplitudeRe,
    map_sum, map_add, map_mul, cast_liftCarrier, cast_liftRay,
    cast_rayRePoly, cast_rayImPoly, CarrierModel.toReal]

theorem cast_jointAmplitudeIm {σ : Type*} (M : CarrierModel σ) (s : RaySigns)
    (j k : Fin 6) : castPoly (jointAmplitudeIm M s j k) =
      SharedParameterIncidence.jointAmplitudeIm M.toReal s j k := by
  simp only [jointAmplitudeIm, SharedParameterIncidence.jointAmplitudeIm,
    map_sum, map_sub, map_mul, cast_liftCarrier, cast_liftRay,
    cast_rayRePoly, cast_rayImPoly, CarrierModel.toReal]

theorem cast_jointResidual {σ : Type*} (M : CarrierModel σ) (s : RaySigns)
    (j : Fin 6) (k : Fin 5) : castPoly (jointResidual M s j k) =
      SharedParameterIncidence.jointResidual M.toReal s j k := by
  simp only [jointResidual, SharedParameterIncidence.jointResidual,
    map_sub, map_add, map_pow, map_mul, map_ofNat, cast_jointAmplitudeRe,
    cast_jointAmplitudeIm, cast_liftCarrier, cast_liftRay,
    cast_denominatorPoly, CarrierModel.toReal]

theorem cast_jointOverlapRe {σ : Type*} (s : RaySigns) (i j : Fin 6) :
    castPoly (jointOverlapRe (σ := σ) s i j) =
      SharedParameterIncidence.jointOverlapRe s i j := by
  simp only [jointOverlapRe, SharedParameterIncidence.jointOverlapRe,
    map_sum, map_add, map_mul, cast_liftRay, cast_rayRePoly, cast_rayImPoly]

theorem cast_jointOverlapIm {σ : Type*} (s : RaySigns) (i j : Fin 6) :
    castPoly (jointOverlapIm (σ := σ) s i j) =
      SharedParameterIncidence.jointOverlapIm s i j := by
  simp only [jointOverlapIm, SharedParameterIncidence.jointOverlapIm,
    map_sum, map_sub, map_mul, cast_liftRay, cast_rayRePoly, cast_rayImPoly]

theorem jointResidual_eval_toReal {σ : Type*} (M : CarrierModel σ)
    (p : σ → ℝ) (t : RayParameters) (s : RaySigns) (j : Fin 6) (k : Fin 5) :
    evalReal (jointPoint p t) (jointResidual M s j k) =
      eval (jointPoint p t) (SharedParameterIncidence.jointResidual M.toReal s j k) := by
  rw [← cast_jointResidual, eval_castPoly]

theorem jointOverlapRe_eval_toReal {σ : Type*} (p : σ → ℝ) (t : RayParameters)
    (s : RaySigns) (i j : Fin 6) :
    evalReal (jointPoint p t) (jointOverlapRe s i j) =
      eval (jointPoint p t) (SharedParameterIncidence.jointOverlapRe s i j) := by
  rw [← cast_jointOverlapRe, eval_castPoly]

theorem jointOverlapIm_eval_toReal {σ : Type*} (p : σ → ℝ) (t : RayParameters)
    (s : RaySigns) (i j : Fin 6) :
    evalReal (jointPoint p t) (jointOverlapIm s i j) =
      eval (jointPoint p t) (SharedParameterIncidence.jointOverlapIm s i j) := by
  rw [← cast_jointOverlapIm, eval_castPoly]

theorem jointResidual_binding {σ : Type*} (M : CarrierModel σ)
    (p : σ → ℝ) (t : RayParameters) (s : RaySigns) (H : BasisMatrix)
    (hM : RepresentsAt M p H) (j : Fin 6) (k : Fin 5) :
    evalReal (jointPoint p t) (jointResidual M s j k) =
      (evalReal p M.denominator * Rays.rayDenominator (t j)) ^ 2 *
        Rays.residual H (s j) (t j) k := by
  rw [jointResidual_eval_toReal]
  simpa only [CarrierModel.toReal, eval_castPoly] using
    SharedParameterIncidence.jointResidual_binding M.toReal p t s H
      ((representsAt_toReal_iff M p H).mpr hM) j k

theorem jointOverlapRe_binding {σ : Type*} (p : σ → ℝ) (t : RayParameters)
    (s : RaySigns) (i j : Fin 6) :
    evalReal (jointPoint p t) (jointOverlapRe s i j) =
      Rays.rayDenominator (t i) * Rays.rayDenominator (t j) *
        (rawOverlap (chartRay (s i) (t i)) (chartRay (s j) (t j))).re := by
  rw [jointOverlapRe_eval_toReal]
  exact SharedParameterIncidence.jointOverlapRe_binding p t s i j

theorem jointOverlapIm_binding {σ : Type*} (p : σ → ℝ) (t : RayParameters)
    (s : RaySigns) (i j : Fin 6) :
    evalReal (jointPoint p t) (jointOverlapIm s i j) =
      Rays.rayDenominator (t i) * Rays.rayDenominator (t j) *
        (rawOverlap (chartRay (s i) (t i)) (chartRay (s j) (t j))).im := by
  rw [jointOverlapIm_eval_toReal]
  exact SharedParameterIncidence.jointOverlapIm_binding p t s i j

def JointChartIncidence {σ : Type*} (M : CarrierModel σ) (p : σ → ℝ)
    (s : RaySigns) (t : RayParameters) (j : Fin 6) : Prop :=
  Rays.InCube (t j) ∧ ∀ k, evalReal (jointPoint p t) (jointResidual M s j k) = 0

def JointBasisIncidence {σ : Type*} (M : CarrierModel σ) (p : σ → ℝ)
    (s : RaySigns) (t : RayParameters) : Prop :=
  (∀ j, JointChartIncidence M p s t j) ∧
    ∀ i j, i ≠ j →
      evalReal (jointPoint p t) (jointOverlapRe s i j) = 0 ∧
      evalReal (jointPoint p t) (jointOverlapIm s i j) = 0

theorem joint_chart_incidence_toReal_iff {σ : Type*} (M : CarrierModel σ)
    (p : σ → ℝ) (t : RayParameters) (s : RaySigns) (j : Fin 6) :
    JointChartIncidence M p s t j ↔
      SharedParameterIncidence.JointChartIncidence M.toReal p s t j := by
  simp only [JointChartIncidence, SharedParameterIncidence.JointChartIncidence,
    jointResidual_eval_toReal]

theorem joint_basis_incidence_toReal_iff {σ : Type*} (M : CarrierModel σ)
    (p : σ → ℝ) (t : RayParameters) (s : RaySigns) :
    JointBasisIncidence M p s t ↔
      SharedParameterIncidence.JointBasisIncidence M.toReal p s t := by
  simp only [JointBasisIncidence, SharedParameterIncidence.JointBasisIncidence,
    joint_chart_incidence_toReal_iff, jointOverlapRe_eval_toReal,
    jointOverlapIm_eval_toReal]

theorem joint_basis_incidence_iff {σ : Type*} (M : CarrierModel σ)
    (p : σ → ℝ) (t : RayParameters) (s : RaySigns) (H : BasisMatrix)
    (hM : RepresentsAt M p H) (hq : evalReal p M.denominator ≠ 0) :
    JointBasisIncidence M p s t ↔ Rays.BasisIncidence H s t := by
  rw [joint_basis_incidence_toReal_iff]
  exact SharedParameterIncidence.joint_basis_incidence_iff M.toReal p t s H
    ((representsAt_toReal_iff M p H).mpr hM)
    (by simpa only [CarrierModel.toReal, eval_castPoly] using hq)

theorem common_ray_joint_polynomial_iff {σ : Type*} (M : CarrierModel σ)
    (p : σ → ℝ) (H : BasisMatrix) (z : Vector) (hM : RepresentsAt M p H)
    (hq : evalReal p M.denominator ≠ 0) (hH : PhaseHadamard H) :
    IsRawCommonRay H z ↔ ∃ s t, JointChartIncidence M p s t 0 ∧
      z = chartRay (s 0) (t 0) := by
  simp only [joint_chart_incidence_toReal_iff]
  exact SharedParameterIncidence.common_ray_joint_polynomial_iff M.toReal p H z
    ((representsAt_toReal_iff M p H).mpr hM)
    (by simpa only [CarrierModel.toReal, eval_castPoly] using hq) hH

theorem third_basis_joint_polynomial_iff {σ : Type*} (M : CarrierModel σ)
    (p : σ → ℝ) (H B : BasisMatrix) (hM : RepresentsAt M p H)
    (hq : evalReal p M.denominator ≠ 0) (hH : PhaseHadamard H) :
    Rays.RawThirdBasis H B ↔ ∃ s t, JointBasisIncidence M p s t ∧ B = Rays.chartBasis s t := by
  simp only [joint_basis_incidence_toReal_iff]
  exact SharedParameterIncidence.third_basis_joint_polynomial_iff M.toReal p H B
    ((representsAt_toReal_iff M p H).mpr hM)
    (by simpa only [CarrierModel.toReal, eval_castPoly] using hq) hH

theorem rational_carrier_third_basis_iff {σ : Type*} (M : CarrierModel σ)
    (p : σ → ℝ) (B : BasisMatrix) (hq : evalReal p M.denominator ≠ 0)
    (hH : PhaseHadamard (rationalCarrier M p)) :
    Rays.RawThirdBasis (rationalCarrier M p) B ↔
      ∃ s t, JointBasisIncidence M p s t ∧ B = Rays.chartBasis s t :=
  third_basis_joint_polynomial_iff M p (rationalCarrier M p) B
    (rationalCarrier_representsAt M p hq) hq hH

#print axioms eval_castPoly
#print axioms evalReal_rational
#print axioms representsAt_toReal_iff
#print axioms rationalCarrier_representsAt
#print axioms cast_denominatorPoly
#print axioms cast_omittedDenominatorPoly
#print axioms cast_rayRePoly
#print axioms cast_rayImPoly
#print axioms cast_liftCarrier
#print axioms cast_liftRay
#print axioms cast_jointAmplitudeRe
#print axioms cast_jointAmplitudeIm
#print axioms cast_jointResidual
#print axioms cast_jointOverlapRe
#print axioms cast_jointOverlapIm
#print axioms jointResidual_eval_toReal
#print axioms jointOverlapRe_eval_toReal
#print axioms jointOverlapIm_eval_toReal
#print axioms jointResidual_binding
#print axioms jointOverlapRe_binding
#print axioms jointOverlapIm_binding
#print axioms joint_chart_incidence_toReal_iff
#print axioms joint_basis_incidence_toReal_iff
#print axioms joint_basis_incidence_iff
#print axioms common_ray_joint_polynomial_iff
#print axioms third_basis_joint_polynomial_iff
#print axioms rational_carrier_third_basis_iff

end
end Mub6.Classification.SharedRationalIncidence
