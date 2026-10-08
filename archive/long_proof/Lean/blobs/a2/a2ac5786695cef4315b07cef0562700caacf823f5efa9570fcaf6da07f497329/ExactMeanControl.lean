import ExactMeanTerminal

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 2000000
namespace ExactMeanChecker20261006
open SignedMeanIntake20261006

def controlWidth : ℚ := 1/1000000
def controlRect (r i : ℚ) : CBox :=
  ⟨⟨r-controlWidth,r+controlWidth⟩,⟨i-controlWidth,i+controlWidth⟩⟩
def controlBox : Fin 4 → CBox := ![
  controlRect 1 0,controlRect 0 1,controlRect (-3/5) (4/5),controlRect 0 (-1)]

/-- A strict positive-width control, checked by kernel reduction of rational
arithmetic. It is not an ID from the external campaign. -/
theorem control_pair2_both :
    (certificate controlBox 2).excludesPlus=true ∧
    (certificate controlBox 2).excludesMinus=true := by decide +kernel

theorem control_rejects : rejectsBoth controlBox=true := by
  simp only [rejectsBoth,rejectsPlus,rejectsMinus,control_pair2_both.1,control_pair2_both.2,
    Bool.or_true,Bool.and_self]

theorem control_excludes {H : Centiradian20261006.Mat6}
    (hH : Centiradian20261006.Physical H) (hd : Centiradian20261006.Dephased H)
    (hm : Centiradian20261006.Maximal H) (hR : 0<Centiradian20261006.leadingR H)
    (hb : ∀ i, (controlBox i).Contains (Centiradian20261006.seedEntry H i)) : False :=
  rejectsBoth_physical hH hd hm hR controlBox hb control_rejects
end ExactMeanChecker20261006

#print axioms ExactMeanChecker20261006.control_pair2_both
#print axioms ExactMeanChecker20261006.control_rejects
#print axioms ExactMeanChecker20261006.control_excludes
