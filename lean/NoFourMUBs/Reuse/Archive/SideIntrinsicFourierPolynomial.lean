import NoFourMUBs.Reuse.Archive.SideIntrinsicPolynomialDefs
import Mathlib.Tactic.LinearCombination

/-! Literal inverse-DFT polynomials from verify_side_fiber.py, with only the
fixed denominator 3 cleared. Valid over every commutative ring. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace StrictReconstruction20261007.SideIntrinsic
universe u
variable {K : Type u} [CommRing K]

def modeAN (a : Rows K) (w : K) : K := a.x0 + w^2*a.x1 + w*a.x2
def modeBN (a : Rows K) (w : K) : K := a.x0 + w*a.x1 + w^2*a.x2
def modeCN (a : Rows K) (w : K) : K := a.y0 + w^2*a.y1 + w*a.y2
def modeDN (a : Rows K) (w : K) : K := a.y0 + w*a.y1 + w^2*a.y2
def modeAbarN (a : Rows K) (w : K) : K :=
  a.x1*a.x2 + w*a.x0*a.x2 + w^2*a.x0*a.x1

theorem quadratic_root_powers (w : K) (hw : w^2+w+1=0) :
    w^2 = -w-1 ∧ w^3 = 1 ∧ w^4 = w ∧ w^5 = w^2 ∧
    w^6 = 1 ∧ w^7 = w ∧ w^8 = w^2 := by
  have h2 : w^2 = -w-1 := by linear_combination hw
  have h3 : w^3 = 1 := by linear_combination (w-1)*hw
  have hp (n : ℕ) : w^(n+3)=w^n := by rw [pow_add,h3,mul_one]
  have h4 : w^4=w := by simpa using hp 1
  have h5 : w^5=w^2 := hp 2
  exact ⟨h2,h3,h4,h5,(hp 3).trans h3,(hp 4).trans h4,(hp 5).trans h5⟩

theorem mode_alpha_numerator (a : Rows K) (w : K) (hw : w^2+w+1=0) :
    modeAN a w * modeBN a w = rowS a^2 - 3*sumXbarN a := by
  obtain ⟨h2,h3,h4,h5,h6,h7,h8⟩ := quadratic_root_powers w hw
  simp only [modeAN,modeBN,rowS,sumXbarN]
  ring_nf
  <;> (try simp only [h8,h7,h6,h5,h4,h3,h2]) <;> ring

theorem mode_gamma_numerator (a : Rows K) (w : K) (hw : w^2+w+1=0) :
    modeAN a w * modeDN a w + modeBN a w * modeCN a w =
      2*rowS a*rowT a - 3*rowPerm a := by
  obtain ⟨h2,h3,h4,h5,h6,h7,h8⟩ := quadratic_root_powers w hw
  simp only [modeAN,modeBN,modeCN,modeDN,rowS,rowT,rowPerm]
  ring_nf
  <;> (try simp only [h8,h7,h6,h5,h4,h3,h2]) <;> ring

theorem mode_det_numerator (a : Rows K) (w : K) (hw : w^2+w+1=0) :
    (modeAN a w * modeDN a w - modeBN a w * modeCN a w)^2 + 3*rowDet a^2 = 0 := by
  obtain ⟨h2,h3,h4,h5,h6,h7,h8⟩ := quadratic_root_powers w hw
  simp only [modeAN,modeBN,modeCN,modeDN,rowDet]
  ring_nf
  <;> (try simp only [h8,h7,h6,h5,h4,h3,h2]) <;> ring

theorem mode_cubic_numerator (a : Rows K) (w : K) (hw : w^2+w+1=0) :
    modeAN a w^2 = rowS a * modeBN a w + 3*modeAbarN a w := by
  obtain ⟨h2,h3,h4,h5,h6,h7,h8⟩ := quadratic_root_powers w hw
  simp only [modeAN,modeBN,modeAbarN,rowS]
  ring_nf
  <;> (try simp only [h8,h7,h6,h5,h4,h3,h2]) <;> ring

theorem mode_inverse_numerators (a : Rows K) (w : K) (hw : w^2+w+1=0) :
    rowS a + modeAN a w + modeBN a w = 3*a.x0 ∧
    rowS a + w*modeAN a w + w^2*modeBN a w = 3*a.x1 ∧
    rowS a + w^2*modeAN a w + w*modeBN a w = 3*a.x2 := by
  obtain ⟨h2,h3,h4,h5,h6,h7,h8⟩ := quadratic_root_powers w hw
  refine ⟨?_,?_,?_⟩ <;> simp only [modeAN,modeBN,rowS] <;> ring_nf <;>
    (try simp only [h8,h7,h6,h5,h4,h3,h2]) <;> ring

#print axioms mode_alpha_numerator
#print axioms mode_gamma_numerator
#print axioms mode_det_numerator
#print axioms mode_cubic_numerator
#print axioms mode_inverse_numerators
end StrictReconstruction20261007.SideIntrinsic
