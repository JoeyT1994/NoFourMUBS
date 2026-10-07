import ExactComplexExpr

/-! Shared interval cutpoints: every supplied rectangle is checked against
an exact small expression range. No claimed intermediate bound is assumed. -/
set_option autoImplicit false
namespace ExactMeanDirect20261006
open ExactMeanChecker20261006 SignedMeanIntake20261006

def cutCheck {n : ℕ} (b : Fin n → CBox) (e : CExpr n) (out : CBox) : Bool :=
  out.re.encloses (CExpr.range b e).re && out.im.encloses (CExpr.range b e).im

theorem cutCheck_sound {n : ℕ} (b : Fin n → CBox) (e : CExpr n) (out : CBox)
    (z : Fin n → ℂ) (hz : ∀ i, (b i).Contains (z i)) (hc : cutCheck b e out=true) :
    out.Contains (CExpr.eval z e) := by
  have hs := CExpr.range_sound e b z hz
  have hh : out.re.encloses (CExpr.range b e).re=true ∧
      out.im.encloses (CExpr.range b e).im=true := by simpa only [cutCheck,Bool.and_eq_true] using hc
  exact ⟨QInterval.encloses_sound hh.1 hs.1,QInterval.encloses_sound hh.2 hs.2⟩
end ExactMeanDirect20261006
#print axioms ExactMeanDirect20261006.cutCheck_sound
