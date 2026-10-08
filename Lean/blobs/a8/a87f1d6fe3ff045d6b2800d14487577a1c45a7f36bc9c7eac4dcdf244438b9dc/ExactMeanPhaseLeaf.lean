import ExactMeanTerminal
import WholeBoxPhase
import MaximalQuartetRadian

/-! Complete phase input checks and literal strict physical leaves. The final
assembly keeps zero-R quartets as an explicit unsolved obligation. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace ExactMeanChecker20261006
open SignedMeanIntake20261006
open Centiradian20261006
open Mub6 Mub6.GlobalBoxCover20261006 Mub6.MaximalRadian20261006

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

theorem PhaseInput.sound (p : PhaseInput) (b : Box 4) (hc : p.check b=true)
    {x : Fin 4 → ℝ} (hx : b.Contains x) (i : Fin 4) :
    (p.rectangles i).Contains (Complex.exp ((x i:ℂ)*Complex.I)) := by
  have h := (of_decide_eq_true hc) i
  have hl : ((p.center i:ℝ)-(p.radius i:ℝ)) ≤ (b.lower i:ℝ) := by exact_mod_cast h.1
  have hu : (b.upper i:ℝ) ≤ (p.center i:ℝ)+(p.radius i:ℝ) := by exact_mod_cast h.2.1
  have habs : |x i-(p.center i:ℝ)| ≤ (p.radius i:ℝ) := by
    rw [abs_le]; constructor <;> linarith [(hx i).1,(hx i).2]
  have hphase := phaseCheck_sound (p.order i) (p.center i) (p.cosBox i) (p.sinBox i) h.2.2
  have hb := phaseWholeBox_sound hphase.1 hphase.2 habs
  simpa only [PhaseInput.rectangles,CBox.Contains,Complex.exp_ofReal_mul_I_re,
    Complex.exp_ofReal_mul_I_im] using hb

def StrictMaximalPopulation (x : Fin 4 → ℝ) : Prop :=
  ∃ D : Fin 4 → BasisMatrix, IsMUBQuartet D ∧
    Physical (phaseOverlap (D 0) (D 1)) ∧ Dephased (phaseOverlap (D 0) (D 1)) ∧
    Maximal (phaseOverlap (D 0) (D 1)) ∧ 0<leadingR (phaseOverlap (D 0) (D 1)) ∧
    PhaseCoordinates (seedEntries (phaseOverlap (D 0) (D 1))) x

/-- This premise refers to actual surviving quartets, not arbitrary Hadamards;
proving it remains a distinct mathematical obligation. -/
def ZeroMaximalQuartetsExcluded : Prop := ∀ (D : Fin 4 → BasisMatrix), IsMUBQuartet D →
    Physical (phaseOverlap (D 0) (D 1)) → Dephased (phaseOverlap (D 0) (D 1)) →
    Maximal (phaseOverlap (D 0) (D 1)) → leadingR (phaseOverlap (D 0) (D 1))=0 → False

theorem phase_leaf_excluded (b : Box 4) (p : PhaseInput)
    (hp : p.check b=true) (ht : rejectsBoth p.rectangles=true) :
    ¬Live StrictMaximalPopulation b := by
  rintro ⟨x,⟨D,hD,hH,hd,hm,hR,hphase⟩,hx⟩
  apply rejectsBoth_physical hH hd hm hR p.rectangles _ ht
  intro i
  have hi := p.sound b hp hx i
  rw [hphase i] at hi
  exact hi

def checkedPhaseLeaf (b : Box 4) (p : PhaseInput)
    (hp : p.check b=true) (ht : rejectsBoth p.rectangles=true) :
    CertifiedTree StrictMaximalPopulation b := .closed b (phase_leaf_excluded b p hp ht)

theorem quartet_reaches_strict_or_zero {B : Fin 4 → BasisMatrix} (hB : IsMUBQuartet B) :
    Live StrictMaximalPopulation (radianRoot 4) ∨
      ∃ D : Fin 4 → BasisMatrix, IsMUBQuartet D ∧ Physical (phaseOverlap (D 0) (D 1)) ∧
        Dephased (phaseOverlap (D 0) (D 1)) ∧ Maximal (phaseOverlap (D 0) (D 1)) ∧
        leadingR (phaseOverlap (D 0) (D 1))=0 := by
  obtain ⟨D,hD,hH,hd,hm⟩ := quartet_has_maximal_phase_edge hB
  rcases maximal_strict_or_zero hH with hpos|hz
  · left
    obtain ⟨x,hx,hphase⟩ := unit_carrier_seed_in_root (phaseOverlap (D 0) (D 1))
      (phaseOverlap_norm_one (hD.2 0 1 (by decide)))
    exact ⟨x,⟨D,hD,hH,hd,hm,hpos,hphase⟩,hx⟩
  · exact Or.inr ⟨D,hD,hH,hd,hm,hz⟩

/-- Checked physical assembly. No such complete forest or zero-R proof is
supplied here. Numerical job completion cannot fill either typed argument. -/
theorem noFour_of_strict_forest_and_zero
    (zero_excluded : ZeroMaximalQuartetsExcluded)
    (tree : CertifiedTree StrictMaximalPopulation (radianRoot 4))
    (closed : tree.frontier=[]) : NoFourMUB6 := by
  rintro ⟨B,hB⟩
  rcases quartet_reaches_strict_or_zero hB with hs|hz
  · exact tree.empty_excludes closed hs
  · obtain ⟨D,hD,hH,hd,hm,hzero⟩ := hz
    exact zero_excluded D hD hH hd hm hzero
end ExactMeanChecker20261006

#print axioms ExactMeanChecker20261006.PhaseInput.sound
#print axioms ExactMeanChecker20261006.phase_leaf_excluded
#print axioms ExactMeanChecker20261006.quartet_reaches_strict_or_zero
#print axioms ExactMeanChecker20261006.noFour_of_strict_forest_and_zero
