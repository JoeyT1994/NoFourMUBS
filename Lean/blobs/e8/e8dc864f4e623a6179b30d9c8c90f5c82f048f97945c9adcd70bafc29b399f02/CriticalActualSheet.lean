import CriticalSingularBoundary
import PhysicalSideRational

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace CriticalActualSheet20261003
open Mub6 Mub6.Numerical Mub6.Classification
open CompactCover GoodMinor FourierSeedBinding FourPhase GlobalCornerDomain
open CriticalPhysical20261003 CriticalPhysicalParameters20261003
open CriticalSingularBoundary20261003 CriticalRowSum20261003
noncomputable section

def blockSheet (E : CompactCover.Mat3) : ℂ :=
  FourierPhysicalSide.physicalSheet (E 1 0) (E 1 1) (E 1 2) (E 2 0) (E 2 1) (E 2 2)

def blockDenominator (E : CompactCover.Mat3) (i : Fin 3) : ℂ :=
  FourierPhysicalSide.sideDenominator (E 1 0) (E 1 1) (E 1 2)
    (E 2 0) (E 2 1) (E 2 2) i

def blockLambda (E : CompactCover.Mat3) (i : Fin 3) : ℂ :=
  FourierPhysicalSide.physicalLambda (E 1 0) (E 1 1) (E 1 2)
    (E 2 0) (E 2 1) (E 2 2) i

theorem actual_side_matrix (E : CompactCover.Mat3) (h0 : ∀ j, E 0 j=1) :
    FourierPhysicalSide.side (E 1 0) (E 1 1) (E 1 2) (E 2 0) (E 2 1) (E 2 2)=E := by
  ext i j
  fin_cases i <;> fin_cases j <;> simp [FourierPhysicalSide.side,h0]

/-- Zero radicand collapses both lifted sheets to the same real value. The
conclusion is equality in C, not merely an equation for its real part. -/
theorem actual_critical_sheet (E : CompactCover.Mat3)
    (hE : ∀ i j, Complex.normSq (E i j)=1) (h0 : ∀ j, E 0 j=1)
    (hD : E.det≠0)
    (hR : CriticalScalarReduction20261003.R (sideP E) (sideJ E) (sideW E)=0) :
    blockSheet E = ((FourierGramNumerators.chi (sideS E) (sideT E) (sideR E) /
      (2*FourierGramNumerators.g (sideS E) (sideT E) (sideR E)) : ℝ) : ℂ) := by
  have hd : FourierPhysicalSide.determinant (E 1 0) (E 1 1) (E 1 2)
      (E 2 0) (E 2 1) (E 2 2)≠0 := by
    simpa only [FourierPhysicalSide.determinant,actual_side_matrix E h0] using hD
  obtain ⟨w,hw,hz⟩ := FourierPhysicalSide.physicalSheet_lifted
    (E 1 0) (E 1 1) (E 1 2) (E 2 0) (E 2 1) (E 2 2)
    (hE 1 0) (hE 1 1) (hE 1 2) (hE 2 0) (hE 2 1) (hE 2 2) hd
  have hr : FourierRadicalGuards.radicand
      (FourierGramNumerators.g (sideS E) (sideT E) (sideR E))
      (FourierGramNumerators.chi (sideS E) (sideT E) (sideR E))
      (FourierGramNumerators.eta (sideS E) (sideT E) (sideR E))=0 := by
    rw [← R_binding]
    exact hR
  change w^2=FourierRadicalGuards.radicand
      (FourierGramNumerators.g (sideS E) (sideT E) (sideR E))
      (FourierGramNumerators.chi (sideS E) (sideT E) (sideR E))
      (FourierGramNumerators.eta (sideS E) (sideT E) (sideR E)) at hw
  rw [hr] at hw
  have hw0 : w=0 := sq_eq_zero_iff.mp hw
  rw [hw0] at hz
  simpa [blockSheet,sideS,sideT,sideR,FourierRadicalGuards.sheet] using hz

theorem actual_critical_sheet_im_zero (E : CompactCover.Mat3)
    (hE : ∀ i j, Complex.normSq (E i j)=1) (h0 : ∀ j, E 0 j=1)
    (hD : E.det≠0)
    (hR : CriticalScalarReduction20261003.R (sideP E) (sideJ E) (sideW E)=0) :
    (blockSheet E).im=0 := by
  rw [actual_critical_sheet E hE h0 hD hR]
  rfl

theorem moment_chi (s t r : ℂ) :
    FourierGramNumerators.chi s t r = momentW s t r -
      (momentP s t r-9)*(momentP s t r-18)+(momentP s t r-15)*momentJ s t r := by
  simp [FourierGramNumerators.chi,FourierGramNumerators.sigma,
    FourierGramNumerators.q,FourierGramNumerators.g,momentP,momentJ,momentW]
  ring

theorem zero_parameter_g_chi (E : CompactCover.Mat3) (z : ℝ)
    (hp : sideP E=9-z^2) (hj : sideJ E=0) (hw : sideW E=z^2*(z+3)^2) :
    FourierGramNumerators.g (sideS E) (sideT E) (sideR E)=3*z^2 ∧
    FourierGramNumerators.chi (sideS E) (sideT E) (sideR E)=6*z^3 := by
  change momentP (sideS E) (sideT E) (sideR E)=9-z^2 at hp
  change momentJ (sideS E) (sideT E) (sideR E)=0 at hj
  change momentW (sideS E) (sideT E) (sideR E)=z^2*(z+3)^2 at hw
  rw [moment_g,moment_chi,hp,hj,hw]
  constructor <;> ring

/-- The signed scalar parameter is the actual full complex sheet. Only z=0
is excluded here; the other exceptional z values and zero correlations remain. -/
theorem actual_zero_parameter_sheet (E : CompactCover.Mat3) (z : ℝ)
    (hE : ∀ i j, Complex.normSq (E i j)=1) (h0 : ∀ j, E 0 j=1)
    (hz : z≠0) (hp : sideP E=9-z^2) (hj : sideJ E=0)
    (hw : sideW E=z^2*(z+3)^2) : blockSheet E=(z:ℂ) := by
  obtain ⟨hg,hchi⟩ := zero_parameter_g_chi E z hp hj hw
  have hd : E.det≠0 := by
    intro he
    have hn := side_g_determinant E hE h0
    rw [hg,he,Complex.normSq_zero] at hn
    nlinarith [sq_pos_of_ne_zero hz]
  have hr : CriticalScalarReduction20261003.R (sideP E) (sideJ E) (sideW E)=0 := by
    rw [hp,hj,hw]
    exact CriticalScalarReduction20261003.zero_param_R z
  rw [actual_critical_sheet E hE h0 hd hr,hg,hchi]
  have hq : (6*z^3)/(2*(3*z^2))=z := by
    field_simp
    ring
  rw [hq]

theorem actual_denominator_of_sheet (E : CompactCover.Mat3) (z : ℝ) (i : Fin 3)
    (hz : blockSheet E=(z:ℂ)) :
    blockDenominator E i =
      ((FourierGramNumerators.g (sideS E) (sideT E) (sideR E) +
        z*FourierGramNumerators.q (sideS E) (sideT E) (sideR E) i : ℝ) : ℂ) := by
  unfold blockDenominator FourierPhysicalSide.sideDenominator
  change (FourierGramNumerators.g (sideS E) (sideT E) (sideR E):ℂ) +
    blockSheet E * (FourierGramNumerators.q (sideS E) (sideT E) (sideR E) i:ℂ)=_
  rw [hz]
  simp

/-- Every actual rational denominator is nonzero on the regular zero-J
stratum. No nonzero-correlation hypothesis is used. -/
theorem actual_zero_parameter_denominators (E : CompactCover.Mat3) (z : ℝ)
    (hE : ∀ i j, Complex.normSq (E i j)=1) (h0 : ∀ j, E 0 j=1)
    (hzlo : -3≤z) (hz0 : z≠0) (hz3 : z≠ -3) (hz2 : z≠ -2)
    (hp : sideP E=9-z^2) (hj : sideJ E=0) (hw : sideW E=z^2*(z+3)^2) :
    ∀ i, blockDenominator E i≠0 := by
  have hs := actual_zero_parameter_sheet E z hE h0 hz0 hp hj hw
  have hd := actual_moment_denominators (sideS E) (sideT E) (sideR E) z
    hzlo hz0 hz3 hz2 hp hj hw
  intro i
  rw [actual_denominator_of_sheet E z i hs]
  apply Complex.ofReal_ne_zero.mpr
  fin_cases i
  · simpa [FourierGramNumerators.q,mul_comm] using hd.2.2
  · simpa [FourierGramNumerators.q,mul_comm] using hd.2.1
  · simpa [FourierGramNumerators.q,mul_comm] using hd.1

/-- Actual all-critical strip corners supply the zero-sheet identity. Singular
corners remain a separate already checked Fourier-family route. -/
theorem allCritical_actual_sheet {H : CompactCover.Mat6} (hH : AllCritical H)
    (c : Fin 20) (hd : (stripCorner H c).det≠0) :
    blockSheet (stripCorner H c) =
      ((FourierGramNumerators.chi (sideS (stripCorner H c)) (sideT (stripCorner H c))
        (sideR (stripCorner H c)) /
      (2*FourierGramNumerators.g (sideS (stripCorner H c)) (sideT (stripCorner H c))
        (sideR (stripCorner H c))) : ℝ) : ℂ) := by
  exact actual_critical_sheet (stripCorner H c)
    (fun i j => hH.1.1.1 (front i) (triples c j))
    (fun j => hH.1.2.1 (triples c j)) hd
    (allCritical_strip_scalar_premises hH c).2.2.1

end
#print axioms actual_side_matrix
#print axioms actual_critical_sheet
#print axioms actual_critical_sheet_im_zero
#print axioms moment_chi
#print axioms zero_parameter_g_chi
#print axioms actual_zero_parameter_sheet
#print axioms actual_denominator_of_sheet
#print axioms actual_zero_parameter_denominators
#print axioms allCritical_actual_sheet
end CriticalActualSheet20261003
