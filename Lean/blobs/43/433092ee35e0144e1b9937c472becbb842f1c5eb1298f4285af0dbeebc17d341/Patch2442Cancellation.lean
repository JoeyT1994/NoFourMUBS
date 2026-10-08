import ShoulderPhaseGatePhysical

/-! Exact polynomial cancellations from Patch2442Region_v3, Section 2.
No unit, physical, regularity, nonzero-denominator, or coverage premise is
needed for the polynomial identities. The complex binding uses the existing
checked shoulder gate definitions; the real binding uses literal norm squares.
-/
set_option autoImplicit false
set_option maxHeartbeats 1000000
namespace Patch2442Algebra20261003
open ShoulderPhaseGate20261002
noncomputable section

def cancelledR {K : Type*} [CommRing K] (p w j : K) : K :=
  4*j^3 + j^2*(-p^2+2*p+27) +
    j*(2*p^3-24*p^2-2*p*w+54*p+30*w) -
    p^4+18*p^3+2*p^2*w-81*p^2-54*p*w-w^2+324*w

def cancelledAdjustedChi {K : Type*} [CommRing K] (p w j z : K) : K :=
  w-p^2+9*p-18*z+2*z*p+(p+3-2*z)*j

theorem radicand_cancellation {K : Type*} [CommRing K] (p w j : K) :
    4*(27-3*p+j)^2*(9-p+j) -
      (w-(p-9)*(p-18)+(p-15)*j)^2 = cancelledR p w j := by
  unfold cancelledR
  ring

theorem adjusted_chi_cancellation {K : Type*} [CommRing K] (p w j z : K) :
    (w-(p-9)*(p-18)+(p-15)*j) + 2*(9-z)*(9-p+j) =
      cancelledAdjustedChi p w j z := by
  unfold cancelledAdjustedChi
  ring

def complexP (s t r : ℂ) : ℂ := X s+X t+X r
def complexW (s t r : ℂ) : ℂ := X s*X t+X s*X r+X t*X r-X s*X t*X r

theorem phaseGate_radicand_cancelled (s t r : ℂ) :
    radicand s t r = cancelledR (complexP s t r) (complexW s t r) (J s t r) := by
  unfold radicand g eta chi complexP complexW cancelledR
  ring

theorem phaseGate_adjusted_chi_cancelled (s t r z : ℂ) :
    chi s t r + 2*(9-z)*eta s t r =
      cancelledAdjustedChi (complexP s t r) (complexW s t r) (J s t r) z := by
  unfold chi eta complexP complexW cancelledAdjustedChi
  ring

theorem phaseGate_k0_cancelled (s t r : ℂ) :
    chi s t r + 2*k0 r*eta s t r =
      cancelledAdjustedChi (complexP s t r) (complexW s t r) (J s t r) (X r) :=
  phaseGate_adjusted_chi_cancelled s t r (X r)

theorem phaseGate_k1_cancelled (s t r : ℂ) :
    chi s t r + 2*k1 t*eta s t r =
      cancelledAdjustedChi (complexP s t r) (complexW s t r) (J s t r) (X t) :=
  phaseGate_adjusted_chi_cancelled s t r (X t)

theorem phaseGate_third_cancelled (s t r : ℂ) :
    chi s t r + 2*(9-X s)*eta s t r =
      cancelledAdjustedChi (complexP s t r) (complexW s t r) (J s t r) (X s) :=
  phaseGate_adjusted_chi_cancelled s t r (X s)

theorem phaseGate_center_cancelled (s t r : ℂ) :
    gateCenter s t r =
      cancelledAdjustedChi (complexP s t r) (complexW s t r) (J s t r) (X r)/2 := by
  rw [← phaseGate_k0_cancelled]
  unfold gateCenter
  ring

def realP (s t r : ℂ) : ℝ := Complex.normSq s+Complex.normSq t+Complex.normSq r
def realW (s t r : ℂ) : ℝ :=
  Complex.normSq s*Complex.normSq t + Complex.normSq s*Complex.normSq r +
    Complex.normSq t*Complex.normSq r - Complex.normSq s*Complex.normSq t*Complex.normSq r
def realJ (s t r : ℂ) : ℝ := 2*(s*r*star t).re

theorem X_normSq (z : ℂ) : X z = (Complex.normSq z : ℂ) := by
  simpa only [X,Complex.star_def] using Complex.mul_conj z

theorem complexP_realP (s t r : ℂ) : complexP s t r = (realP s t r : ℂ) := by
  simp only [complexP,realP,X_normSq,Complex.ofReal_add]

theorem complexW_realW (s t r : ℂ) : complexW s t r = (realW s t r : ℂ) := by
  simp only [complexW,realW,X_normSq,Complex.ofReal_add,Complex.ofReal_sub,Complex.ofReal_mul]

theorem J_realJ (s t r : ℂ) : J s t r = (realJ s t r : ℂ) := by
  have he : J s t r = s*r*star t+star (s*r*star t) := by
    simp only [J,star_mul,star_star]
    ring
  rw [he]
  apply Complex.ext <;>
    simp only [realJ,Complex.add_re,Complex.add_im,Complex.star_def,
      Complex.conj_re,Complex.conj_im,Complex.ofReal_re,Complex.ofReal_im] <;> ring

theorem phaseGate_radicand_real_cancelled (s t r : ℂ) :
    radicand s t r =
      ((cancelledR (realP s t r) (realW s t r) (realJ s t r) : ℝ) : ℂ) := by
  rw [phaseGate_radicand_cancelled,complexP_realP,complexW_realW,J_realJ]
  unfold cancelledR
  push_cast

theorem phaseGate_radicand_re_cancelled (s t r : ℂ) :
    (radicand s t r).re = cancelledR (realP s t r) (realW s t r) (realJ s t r) := by
  rw [phaseGate_radicand_real_cancelled,Complex.ofReal_re]

theorem phaseGate_adjusted_chi_real_cancelled (s t r : ℂ) (z : ℝ) :
    chi s t r + 2*(9-(z:ℂ))*eta s t r =
      ((cancelledAdjustedChi (realP s t r) (realW s t r) (realJ s t r) z : ℝ) : ℂ) := by
  rw [phaseGate_adjusted_chi_cancelled,complexP_realP,complexW_realW,J_realJ]
  unfold cancelledAdjustedChi
  push_cast

#print axioms radicand_cancellation
#print axioms adjusted_chi_cancellation
#print axioms phaseGate_radicand_cancelled
#print axioms phaseGate_adjusted_chi_cancelled
#print axioms phaseGate_k0_cancelled
#print axioms phaseGate_k1_cancelled
#print axioms phaseGate_third_cancelled
#print axioms phaseGate_center_cancelled
#print axioms X_normSq
#print axioms complexP_realP
#print axioms complexW_realW
#print axioms J_realJ
#print axioms phaseGate_radicand_real_cancelled
#print axioms phaseGate_radicand_re_cancelled
#print axioms phaseGate_adjusted_chi_real_cancelled
#print phaseGate_radicand_re_cancelled
end
end Patch2442Algebra20261003
