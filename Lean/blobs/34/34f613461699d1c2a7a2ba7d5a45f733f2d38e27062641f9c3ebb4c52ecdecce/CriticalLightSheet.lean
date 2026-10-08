import CriticalMomentBinding
import CriticalZeroPoles
import PhysicalSideRational

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace CriticalLightSheet20261003
open Matrix CriticalPhysical20261003
noncomputable section

/-- These literal block correlations are definitionally the existing physical
sideS, sideT, sideR and p,J,W definitions. They are repeated locally solely to
avoid importing unrelated global-corner classification into scalar assembly. -/
def sideS (E : Matrix (Fin 3) (Fin 3) ℂ) : ℂ :=
  FourierPhysicalSide.s (E 1 0) (E 1 1) (E 1 2)
def sideT (E : Matrix (Fin 3) (Fin 3) ℂ) : ℂ :=
  FourierPhysicalSide.t (E 2 0) (E 2 1) (E 2 2)
def sideR (E : Matrix (Fin 3) (Fin 3) ℂ) : ℂ :=
  FourierPhysicalSide.r (E 1 0) (E 1 1) (E 1 2) (E 2 0) (E 2 1) (E 2 2)
def sideP (E : Matrix (Fin 3) (Fin 3) ℂ) : ℝ := momentP (sideS E) (sideT E) (sideR E)
def sideJ (E : Matrix (Fin 3) (Fin 3) ℂ) : ℝ := momentJ (sideS E) (sideT E) (sideR E)
def sideW (E : Matrix (Fin 3) (Fin 3) ℂ) : ℝ := momentW (sideS E) (sideT E) (sideR E)

def blockSheet (E : Matrix (Fin 3) (Fin 3) ℂ) : ℂ :=
  FourierPhysicalSide.physicalSheet (E 1 0) (E 1 1) (E 1 2) (E 2 0) (E 2 1) (E 2 2)

def blockDenominator (E : Matrix (Fin 3) (Fin 3) ℂ) (i : Fin 3) : ℂ :=
  FourierPhysicalSide.sideDenominator (E 1 0) (E 1 1) (E 1 2)
    (E 2 0) (E 2 1) (E 2 2) i

def blockLambda (E : Matrix (Fin 3) (Fin 3) ℂ) (i : Fin 3) : ℂ :=
  FourierPhysicalSide.physicalLambda (E 1 0) (E 1 1) (E 1 2)
    (E 2 0) (E 2 1) (E 2 2) i

theorem actual_side_matrix (E : Matrix (Fin 3) (Fin 3) ℂ) (h0 : ∀ j, E 0 j=1) :
    FourierPhysicalSide.side (E 1 0) (E 1 1) (E 1 2) (E 2 0) (E 2 1) (E 2 2)=E := by
  ext i j
  fin_cases i <;> fin_cases j <;> simp [FourierPhysicalSide.side,h0]

theorem side_g_determinant (E : Matrix (Fin 3) (Fin 3) ℂ)
    (hE : ∀ i j, Complex.normSq (E i j)=1) (h0 : ∀ j, E 0 j=1) :
    FourierGramNumerators.g (sideS E) (sideT E) (sideR E)=Complex.normSq E.det := by
  have he : FourierPhysicalSide.side (E 1 0) (E 1 1) (E 1 2)
      (E 2 0) (E 2 1) (E 2 2)=E := by
    ext i j
    fin_cases i <;> fin_cases j <;> simp [FourierPhysicalSide.side,h0]
  have hd := FourierPhysicalSide.g_determinant (E 1 0) (E 1 1) (E 1 2)
    (E 2 0) (E 2 1) (E 2 2) (hE 1 0) (hE 1 1) (hE 1 2)
    (hE 2 0) (hE 2 1) (hE 2 2)
  simpa only [sideS,sideT,sideR,FourierPhysicalSide.determinant,he] using hd

theorem moment_g (s t r : ℂ) :
    FourierGramNumerators.g s t r=27-3*momentP s t r+momentJ s t r := by
  simp [FourierGramNumerators.g, momentP, momentJ]

/-- Zero radicand collapses both lifted sheets to the same real value. The
conclusion is equality in C, not merely an equation for its real part. -/
theorem actual_critical_sheet (E : Matrix (Fin 3) (Fin 3) ℂ)
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

theorem actual_critical_sheet_im_zero (E : Matrix (Fin 3) (Fin 3) ℂ)
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

theorem zero_parameter_g_chi (E : Matrix (Fin 3) (Fin 3) ℂ) (z : ℝ)
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
theorem actual_zero_parameter_sheet (E : Matrix (Fin 3) (Fin 3) ℂ) (z : ℝ)
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

theorem actual_denominator_of_sheet (E : Matrix (Fin 3) (Fin 3) ℂ) (z : ℝ) (i : Fin 3)
    (hz : blockSheet E=(z:ℂ)) :
    blockDenominator E i =
      ((FourierGramNumerators.g (sideS E) (sideT E) (sideR E) +
        z*FourierGramNumerators.q (sideS E) (sideT E) (sideR E) i : ℝ) : ℂ) := by
  unfold blockDenominator FourierPhysicalSide.sideDenominator
  change (FourierGramNumerators.g (sideS E) (sideT E) (sideR E):ℂ) +
    blockSheet E * (FourierGramNumerators.q (sideS E) (sideT E) (sideR E) i:ℂ)=_
  rw [hz]
  simp

theorem actual_moment_denominators (s t r : ℂ) (z : ℝ)
    (hzlo : -3≤z) (hz0 : z≠0) (hz3 : z≠ -3) (hz2 : z≠ -2)
    (hp : momentP s t r=9-z^2) (hj : momentJ s t r=0)
    (hw : momentW s t r=z^2*(z+3)^2) :
    FourierGramNumerators.g s t r+(9-Complex.normSq s)*z≠0 ∧
    FourierGramNumerators.g s t r+(9-Complex.normSq t)*z≠0 ∧
    FourierGramNumerators.g s t r+(9-Complex.normSq r)*z≠0 := by
  have hD := CriticalScalarReduction20261003.zero_all_moment_denominators z
    (Complex.normSq s) (Complex.normSq t) (Complex.normSq r)
    (Complex.normSq_nonneg s) (Complex.normSq_nonneg t) (Complex.normSq_nonneg r)
    hzlo hz0 hz3 hz2 hp hw
  have hg : FourierGramNumerators.g s t r=3*z^2 := by rw [moment_g,hp,hj]; ring
  have hs : FourierGramNumerators.g s t r+(9-Complex.normSq s)*z=
      z*(3*z+9-Complex.normSq s) := by rw [hg]; ring
  have ht : FourierGramNumerators.g s t r+(9-Complex.normSq t)*z=
      z*(3*z+9-Complex.normSq t) := by rw [hg]; ring
  have hr : FourierGramNumerators.g s t r+(9-Complex.normSq r)*z=
      z*(3*z+9-Complex.normSq r) := by rw [hg]; ring
  rw [hs,ht,hr]
  exact hD

/-- Every actual rational denominator is nonzero on the regular zero-J
stratum. No nonzero-correlation hypothesis is used. -/
theorem actual_zero_parameter_denominators (E : Matrix (Fin 3) (Fin 3) ℂ) (z : ℝ)
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

end
#print axioms actual_side_matrix
#print axioms side_g_determinant
#print axioms moment_g
#print axioms actual_critical_sheet
#print axioms actual_critical_sheet_im_zero
#print axioms moment_chi
#print axioms zero_parameter_g_chi
#print axioms actual_zero_parameter_sheet
#print axioms actual_denominator_of_sheet
#print axioms actual_moment_denominators
#print axioms actual_zero_parameter_denominators
end CriticalLightSheet20261003
