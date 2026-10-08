import SignedNumeratorDefs

set_option autoImplicit false
set_option maxHeartbeats 1500000
set_option maxRecDepth 10000
namespace Centiradian20261006.SignedDeterminant
open scoped ComplexConjugate
noncomputable section

def certCoeff0 (a b c : ℂ) : ℂ := 0
    - (cNum0 a b c)*(cNum0 a b c)
    + (dNum0 a b c)*(dNum0 a b c)

theorem certCoeff0_zero (a b c : ℂ) : certCoeff0 a b c=0 := by
  simp only [certCoeff0, gNum0, gNum1, gNum2, eNum0, eNum1, eNum2, cNum0, cNum1, cNum2, cNum3, cNum4, dNum0, dNum1, dNum2, dNum3, dNum4]
  ring

def certCoeff1 (a b c : ℂ) : ℂ := 0
    + 4*a*b*c*(gNum0 a b c)*(gNum0 a b c)*(eNum0 a b c)
    - (cNum0 a b c)*(cNum1 a b c)
    + (dNum0 a b c)*(dNum1 a b c)
    - (cNum1 a b c)*(cNum0 a b c)
    + (dNum1 a b c)*(dNum0 a b c)

theorem certCoeff1_zero (a b c : ℂ) : certCoeff1 a b c=0 := by
  simp only [certCoeff1, gNum0, gNum1, gNum2, eNum0, eNum1, eNum2, cNum0, cNum1, cNum2, cNum3, cNum4, dNum0, dNum1, dNum2, dNum3, dNum4]
  ring

def certCoeff2 (a b c : ℂ) : ℂ := 0
    + 4*a*b*c*(gNum0 a b c)*(gNum0 a b c)*(eNum1 a b c)
    + 4*a*b*c*(gNum0 a b c)*(gNum1 a b c)*(eNum0 a b c)
    + 4*a*b*c*(gNum1 a b c)*(gNum0 a b c)*(eNum0 a b c)
    - (cNum0 a b c)*(cNum2 a b c)
    + (dNum0 a b c)*(dNum2 a b c)
    - (cNum1 a b c)*(cNum1 a b c)
    + (dNum1 a b c)*(dNum1 a b c)
    - (cNum2 a b c)*(cNum0 a b c)
    + (dNum2 a b c)*(dNum0 a b c)

theorem certCoeff2_zero (a b c : ℂ) : certCoeff2 a b c=0 := by
  simp only [certCoeff2, gNum0, gNum1, gNum2, eNum0, eNum1, eNum2, cNum0, cNum1, cNum2, cNum3, cNum4, dNum0, dNum1, dNum2, dNum3, dNum4]
  ring

def certCoeff3 (a b c : ℂ) : ℂ := 0
    + 4*a*b*c*(gNum0 a b c)*(gNum0 a b c)*(eNum2 a b c)
    + 4*a*b*c*(gNum0 a b c)*(gNum1 a b c)*(eNum1 a b c)
    + 4*a*b*c*(gNum0 a b c)*(gNum2 a b c)*(eNum0 a b c)
    + 4*a*b*c*(gNum1 a b c)*(gNum0 a b c)*(eNum1 a b c)
    + 4*a*b*c*(gNum1 a b c)*(gNum1 a b c)*(eNum0 a b c)
    + 4*a*b*c*(gNum2 a b c)*(gNum0 a b c)*(eNum0 a b c)
    - (cNum0 a b c)*(cNum3 a b c)
    + (dNum0 a b c)*(dNum3 a b c)
    - (cNum1 a b c)*(cNum2 a b c)
    + (dNum1 a b c)*(dNum2 a b c)
    - (cNum2 a b c)*(cNum1 a b c)
    + (dNum2 a b c)*(dNum1 a b c)
    - (cNum3 a b c)*(cNum0 a b c)
    + (dNum3 a b c)*(dNum0 a b c)

theorem certCoeff3_zero (a b c : ℂ) : certCoeff3 a b c=0 := by
  simp only [certCoeff3, gNum0, gNum1, gNum2, eNum0, eNum1, eNum2, cNum0, cNum1, cNum2, cNum3, cNum4, dNum0, dNum1, dNum2, dNum3, dNum4]
  ring

def certCoeff4 (a b c : ℂ) : ℂ := 0
    + 4*a*b*c*(gNum0 a b c)*(gNum1 a b c)*(eNum2 a b c)
    + 4*a*b*c*(gNum0 a b c)*(gNum2 a b c)*(eNum1 a b c)
    + 4*a*b*c*(gNum1 a b c)*(gNum0 a b c)*(eNum2 a b c)
    + 4*a*b*c*(gNum1 a b c)*(gNum1 a b c)*(eNum1 a b c)
    + 4*a*b*c*(gNum1 a b c)*(gNum2 a b c)*(eNum0 a b c)
    + 4*a*b*c*(gNum2 a b c)*(gNum0 a b c)*(eNum1 a b c)
    + 4*a*b*c*(gNum2 a b c)*(gNum1 a b c)*(eNum0 a b c)
    - (cNum0 a b c)*(cNum4 a b c)
    + (dNum0 a b c)*(dNum4 a b c)
    - (cNum1 a b c)*(cNum3 a b c)
    + (dNum1 a b c)*(dNum3 a b c)
    - (cNum2 a b c)*(cNum2 a b c)
    + (dNum2 a b c)*(dNum2 a b c)
    - (cNum3 a b c)*(cNum1 a b c)
    + (dNum3 a b c)*(dNum1 a b c)
    - (cNum4 a b c)*(cNum0 a b c)
    + (dNum4 a b c)*(dNum0 a b c)

theorem certCoeff4_zero (a b c : ℂ) : certCoeff4 a b c=0 := by
  simp only [certCoeff4, gNum0, gNum1, gNum2, eNum0, eNum1, eNum2, cNum0, cNum1, cNum2, cNum3, cNum4, dNum0, dNum1, dNum2, dNum3, dNum4]
  ring

def certCoeff5 (a b c : ℂ) : ℂ := 0
    + 4*a*b*c*(gNum0 a b c)*(gNum2 a b c)*(eNum2 a b c)
    + 4*a*b*c*(gNum1 a b c)*(gNum1 a b c)*(eNum2 a b c)
    + 4*a*b*c*(gNum1 a b c)*(gNum2 a b c)*(eNum1 a b c)
    + 4*a*b*c*(gNum2 a b c)*(gNum0 a b c)*(eNum2 a b c)
    + 4*a*b*c*(gNum2 a b c)*(gNum1 a b c)*(eNum1 a b c)
    + 4*a*b*c*(gNum2 a b c)*(gNum2 a b c)*(eNum0 a b c)
    - (cNum1 a b c)*(cNum4 a b c)
    + (dNum1 a b c)*(dNum4 a b c)
    - (cNum2 a b c)*(cNum3 a b c)
    + (dNum2 a b c)*(dNum3 a b c)
    - (cNum3 a b c)*(cNum2 a b c)
    + (dNum3 a b c)*(dNum2 a b c)
    - (cNum4 a b c)*(cNum1 a b c)
    + (dNum4 a b c)*(dNum1 a b c)

theorem certCoeff5_zero (a b c : ℂ) : certCoeff5 a b c=0 := by
  simp only [certCoeff5, gNum0, gNum1, gNum2, eNum0, eNum1, eNum2, cNum0, cNum1, cNum2, cNum3, cNum4, dNum0, dNum1, dNum2, dNum3, dNum4]
  ring

def certCoeff6 (a b c : ℂ) : ℂ := 0
    + 4*a*b*c*(gNum1 a b c)*(gNum2 a b c)*(eNum2 a b c)
    + 4*a*b*c*(gNum2 a b c)*(gNum1 a b c)*(eNum2 a b c)
    + 4*a*b*c*(gNum2 a b c)*(gNum2 a b c)*(eNum1 a b c)
    - (cNum2 a b c)*(cNum4 a b c)
    + (dNum2 a b c)*(dNum4 a b c)
    - (cNum3 a b c)*(cNum3 a b c)
    + (dNum3 a b c)*(dNum3 a b c)
    - (cNum4 a b c)*(cNum2 a b c)
    + (dNum4 a b c)*(dNum2 a b c)

theorem certCoeff6_zero (a b c : ℂ) : certCoeff6 a b c=0 := by
  simp only [certCoeff6, gNum0, gNum1, gNum2, eNum0, eNum1, eNum2, cNum0, cNum1, cNum2, cNum3, cNum4, dNum0, dNum1, dNum2, dNum3, dNum4]
  ring

def certCoeff7 (a b c : ℂ) : ℂ := 0
    + 4*a*b*c*(gNum2 a b c)*(gNum2 a b c)*(eNum2 a b c)
    - (cNum3 a b c)*(cNum4 a b c)
    + (dNum3 a b c)*(dNum4 a b c)
    - (cNum4 a b c)*(cNum3 a b c)
    + (dNum4 a b c)*(dNum3 a b c)

theorem certCoeff7_zero (a b c : ℂ) : certCoeff7 a b c=0 := by
  simp only [certCoeff7, gNum0, gNum1, gNum2, eNum0, eNum1, eNum2, cNum0, cNum1, cNum2, cNum3, cNum4, dNum0, dNum1, dNum2, dNum3, dNum4]
  ring

def certCoeff8 (a b c : ℂ) : ℂ := 0
    - (cNum4 a b c)*(cNum4 a b c)
    + (dNum4 a b c)*(dNum4 a b c)

theorem certCoeff8_zero (a b c : ℂ) : certCoeff8 a b c=0 := by
  simp only [certCoeff8, gNum0, gNum1, gNum2, eNum0, eNum1, eNum2, cNum0, cNum1, cNum2, cNum3, cNum4, dNum0, dNum1, dNum2, dNum3, dNum4]
  ring

theorem numerator_certificate (a b c d : ℂ) :
    4*(denominator a b c d)*(gNum a b c d)^2*(eNum a b c d)-
      (cNum a b c d)^2 = -(dNum a b c d)^2 := by
  have h : 4*(denominator a b c d)*(gNum a b c d)^2*(eNum a b c d)-
      (cNum a b c d)^2+(dNum a b c d)^2 =
    certCoeff0 a b c + certCoeff1 a b c*d + certCoeff2 a b c*d^2 + certCoeff3 a b c*d^3 + certCoeff4 a b c*d^4 + certCoeff5 a b c*d^5 + certCoeff6 a b c*d^6 + certCoeff7 a b c*d^7 + certCoeff8 a b c*d^8 := by
    unfold denominator gNum eNum cNum dNum certCoeff0 certCoeff1 certCoeff2 certCoeff3 certCoeff4 certCoeff5 certCoeff6 certCoeff7 certCoeff8
    ring
  simp only [certCoeff0_zero, certCoeff1_zero, certCoeff2_zero, certCoeff3_zero, certCoeff4_zero, certCoeff5_zero, certCoeff6_zero, certCoeff7_zero, certCoeff8_zero, zero_mul, add_zero] at h
  exact eq_neg_of_add_eq_zero_left h

theorem p_num_identity (a b c d : ℂ) :
    xNum a b c d+yNum a b c d+zNum a b c d = pNum a b c d := by
  unfold xNum yNum zNum pNum
  ring

theorem g_num_identity (a b c d : ℂ) :
    27*denominator a b c d-3*pNum a b c d-jNum a b c d = gNum a b c d := by
  unfold denominator pNum jNum gNum gNum0 gNum1 gNum2
  ring

theorem e_num_identity (a b c d : ℂ) :
    9*denominator a b c d-pNum a b c d-jNum a b c d = eNum a b c d := by
  unfold denominator pNum jNum eNum eNum0 eNum1 eNum2
  ring

theorem c_num_identity (a b c d : ℂ) :
    denominator a b c d*(xNum a b c d*yNum a b c d+xNum a b c d*zNum a b c d+yNum a b c d*zNum a b c d)-xNum a b c d*yNum a b c d*zNum a b c d-
      denominator a b c d*(pNum a b c d-9*denominator a b c d)*(pNum a b c d-18*denominator a b c d)-
      denominator a b c d*(pNum a b c d-15*denominator a b c d)*jNum a b c d =
      denominator a b c d*cNum a b c d := by
  unfold denominator xNum yNum zNum pNum jNum cNum cNum0 cNum1 cNum2 cNum3 cNum4
  ring

end
end Centiradian20261006.SignedDeterminant

#print axioms Centiradian20261006.SignedDeterminant.numerator_certificate

#print axioms Centiradian20261006.SignedDeterminant.p_num_identity

#print axioms Centiradian20261006.SignedDeterminant.g_num_identity

#print axioms Centiradian20261006.SignedDeterminant.e_num_identity

#print axioms Centiradian20261006.SignedDeterminant.c_num_identity
