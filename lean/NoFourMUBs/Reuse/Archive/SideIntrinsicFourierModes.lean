import NoFourMUBs.Reuse.Archive.SideIntrinsicFourierPolynomial
import NoFourMUBs.Reuse.Archive.SideIntrinsicUnitBindings
import NoFourMUBs.Reuse.Archive.SideDFTIdentities
import Mathlib.Tactic.FieldSimp

/-! Actual inverse-DFT modes and the supplied determinant, permanent, and cubic
identities. This module retains both Fourier orientations. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace StrictReconstruction20261007.SideIntrinsic
open scoped ComplexConjugate
noncomputable section

def sideModeA (a : Rows ℂ) (w : ℂ) : ℂ := modeAN a w / 3
def sideModeB (a : Rows ℂ) (w : ℂ) : ℂ := modeBN a w / 3
def sideModeC (a : Rows ℂ) (w : ℂ) : ℂ := modeCN a w / 3
def sideModeD (a : Rows ℂ) (w : ℂ) : ℂ := modeDN a w / 3
def sideModeDelta (a : Rows ℂ) (w : ℂ) : ℂ :=
  sideModeA a w * sideModeD a w - sideModeB a w * sideModeC a w

theorem actual_mode_alpha (a : Rows ℂ) (ha : UnitRows a) (w : ℂ) (hw : w^2+w+1=0) :
    sideModeA a w * sideModeB a w = (rowS a / 3)^2 - rowU a * conj (rowS a / 3) := by
  have hp := mode_alpha_numerator a w hw
  have hs := (row_sum_conjugate_bindings a ha).1
  rw [← hs] at hp
  simp only [sideModeA,sideModeB,map_div₀,map_ofNat]
  field_simp
  linear_combination hp

#print axioms actual_mode_alpha

theorem actual_mode_gamma (a : Rows ℂ) (w : ℂ) (hw : w^2+w+1=0) :
    sideModeA a w * sideModeD a w + sideModeB a w * sideModeC a w =
      2*(rowS a/3)*(rowT a/3) - rowPerm a/3 := by
  have hp := mode_gamma_numerator a w hw
  simp only [sideModeA,sideModeB,sideModeC,sideModeD]
  field_simp
  linear_combination hp

#print axioms actual_mode_gamma

theorem actual_mode_determinant (a : Rows ℂ) (w : ℂ) (hw : w^2+w+1=0) :
    rowDet a^2 + 27*sideModeDelta a w^2 = 0 := by
  have hp := mode_det_numerator a w hw
  calc
    _ = ((modeAN a w * modeDN a w - modeBN a w * modeCN a w)^2 +
        3*rowDet a^2) / 3 := by
      simp only [sideModeDelta,sideModeA,sideModeB,sideModeC,sideModeD]
      field_simp
      <;> ring
    _ = 0 := by rw [hp]; norm_num

#print axioms actual_mode_determinant

theorem actual_mode_conjugate (a : Rows ℂ) (ha : UnitRows a) (w : ℂ)
    (hwu : Complex.normSq w=1) (hw : w^2+w+1=0) :
    rowU a * conj (sideModeA a w) = modeAbarN a w / 3 := by
  have hc : conj w = w^2 := by
    simpa only [Complex.star_def] using SideDFT.star_eq_square_of_quadratic_unit hwu hw
  have hc2 : conj (w^2) = w := by
    simpa only [Complex.star_def] using SideDFT.star_square_eq_of_quadratic_unit hwu hw
  obtain ⟨h0,h1,h2,_,_,_⟩ := row_pair_bindings a ha
  simp only [sideModeA,modeAN,map_div₀,map_ofNat,map_add,map_mul,hc,hc2]
  calc
    _ = ((rowU a * conj a.x0) + w*(rowU a * conj a.x1) +
        w^2*(rowU a * conj a.x2))/3 := by ring
    _ = _ := by rw [h0,h1,h2]; unfold modeAbarN; ring

#print axioms actual_mode_conjugate

theorem actual_mode_cubic (a : Rows ℂ) (ha : UnitRows a) (w : ℂ)
    (hwu : Complex.normSq w=1) (hw : w^2+w+1=0) :
    sideModeA a w^3 = rowU a * (Complex.normSq (sideModeA a w) : ℂ) +
      (rowS a/3) * sideModeA a w * sideModeB a w := by
  have hp := mode_cubic_numerator a w hw
  have hc := actual_mode_conjugate a ha w hwu hw
  have hs : sideModeA a w^2 = (rowS a/3)*sideModeB a w +
      rowU a * conj (sideModeA a w) := by
    rw [hc]
    simp only [sideModeA,sideModeB]
    field_simp
    linear_combination hp
  rw [← Complex.mul_conj]
  linear_combination sideModeA a w * hs

#print axioms actual_mode_cubic
end
end StrictReconstruction20261007.SideIntrinsic
