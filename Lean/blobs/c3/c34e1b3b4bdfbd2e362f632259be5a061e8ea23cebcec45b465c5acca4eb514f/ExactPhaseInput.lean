import ExactComplexExpr
import WholeBoxPhase
import ClosedBoxForest

/-! Exact rational input certification for every phase in a closed angle box.
Split from the resource-aborted ExactMeanPhaseLeaf draft; the predicate is
unchanged and the large signed-mean expression definitions are not imported.
-/
set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace ExactMeanChecker20261006
open SignedMeanIntake20261006 Mub6.GlobalBoxCover20261006

structure PhaseInput where
  center : Fin 4 → ℚ
  radius : Fin 4 → ℚ
  order : Fin 4 → ℕ
  cosBox : Fin 4 → QInterval
  sinBox : Fin 4 → QInterval

def PhaseInput.rectangles (p : PhaseInput) (i : Fin 4) : CBox :=
  ⟨(p.cosBox i).widen (p.radius i),(p.sinBox i).widen (p.radius i)⟩

def PhaseInput.check (p : PhaseInput) (b : Box 4) : Bool := decide (∀ i,
  p.center i-p.radius i ≤ b.lower i ∧ b.upper i ≤ p.center i+p.radius i ∧
  phaseCheck (p.order i) (p.center i) (p.cosBox i) (p.sinBox i)=true)

theorem PhaseInput.check_spec (p : PhaseInput) (b : Box 4) (hc : p.check b=true) :
    ∀ i, p.center i-p.radius i ≤ b.lower i ∧ b.upper i ≤ p.center i+p.radius i ∧
      phaseCheck (p.order i) (p.center i) (p.cosBox i) (p.sinBox i)=true :=
  of_decide_eq_true hc

theorem PhaseInput.sound (p : PhaseInput) (b : Box 4) (hc : p.check b=true)
    {x : Fin 4 → ℝ} (hx : b.Contains x) (i : Fin 4) :
    (p.rectangles i).Contains (Complex.exp ((x i:ℂ)*Complex.I)) := by
  have h : p.center i-p.radius i ≤ b.lower i ∧ b.upper i ≤ p.center i+p.radius i ∧
      phaseCheck (p.order i) (p.center i) (p.cosBox i) (p.sinBox i)=true :=
    p.check_spec b hc i
  have hl : ((p.center i:ℝ)-(p.radius i:ℝ)) ≤ (b.lower i:ℝ) := by exact_mod_cast h.1
  have hu : (b.upper i:ℝ) ≤ (p.center i:ℝ)+(p.radius i:ℝ) := by exact_mod_cast h.2.1
  have habs : |x i-(p.center i:ℝ)| ≤ (p.radius i:ℝ) := by
    rw [abs_le]
    constructor <;> linarith [(hx i).1,(hx i).2]
  have hphase : (p.cosBox i).Contains (Real.cos (p.center i:ℝ)) ∧
      (p.sinBox i).Contains (Real.sin (p.center i:ℝ)) :=
    phaseCheck_sound (p.order i) (p.center i) (p.cosBox i) (p.sinBox i) h.2.2
  have hb : ((p.cosBox i).widen (p.radius i)).Contains (Real.cos (x i)) ∧
      ((p.sinBox i).widen (p.radius i)).Contains (Real.sin (x i)) :=
    phaseWholeBox_sound hphase.1 hphase.2 habs
  simpa only [PhaseInput.rectangles,CBox.Contains,Complex.exp_ofReal_mul_I_re,
    Complex.exp_ofReal_mul_I_im] using hb

end ExactMeanChecker20261006
#print axioms ExactMeanChecker20261006.PhaseInput.check_spec
#print axioms ExactMeanChecker20261006.PhaseInput.sound
