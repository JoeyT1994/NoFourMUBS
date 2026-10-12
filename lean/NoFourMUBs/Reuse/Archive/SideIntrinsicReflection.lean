import NoFourMUBs.Reuse.Archive.SideIntrinsicFourierModes
import NoFourMUBs.Reuse.Archive.SideIntrinsicMatrixBindings
import Mathlib.Tactic.FinCases

/-! The single column reflection required to orient the two Fourier modes.
The orientation tie is retained: either branch can be chosen there. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace StrictReconstruction20261007.SideIntrinsic
open scoped ComplexConjugate
noncomputable section

def reflectRows (a : Rows ℂ) : Rows ℂ := ⟨a.x0,a.x2,a.x1,a.y0,a.y2,a.y1⟩

theorem reflectRows_unit (a : Rows ℂ) (ha : UnitRows a) : UnitRows (reflectRows a) := by
  obtain ⟨hx0,hx1,hx2,hy0,hy1,hy2⟩ := ha
  exact ⟨hx0,hx2,hx1,hy0,hy2,hy1⟩

theorem reflectRows_correlations (a : Rows ℂ) :
    rowS (reflectRows a) = rowS a ∧ rowT (reflectRows a) = rowT a ∧
    rowR (reflectRows a) = rowR a := by
  refine ⟨?_,?_,?_⟩ <;> simp only [reflectRows,rowS,rowT,rowR] <;> ring

theorem reflectRows_modes (a : Rows ℂ) (w : ℂ) :
    sideModeA (reflectRows a) w = sideModeB a w ∧
    sideModeB (reflectRows a) w = sideModeA a w ∧
    sideModeC (reflectRows a) w = sideModeD a w ∧
    sideModeD (reflectRows a) w = sideModeC a w := by
  refine ⟨?_,?_,?_,?_⟩ <;>
    simp only [reflectRows,sideModeA,sideModeB,sideModeC,sideModeD,modeAN,modeBN,modeCN,modeDN] <;> ring

theorem reflectRows_matrix (a : Rows ℂ) (i j : Fin 3) :
    phaseSide (reflectRows a) i j = phaseSide a i ((Equiv.swap (1 : Fin 3) 2) j) := by
  fin_cases i <;> fin_cases j <;> simp [phaseSide,reflectRows,Equiv.swap_apply_def]

theorem choose_oriented_rows (a : Rows ℂ) (ha : UnitRows a) (w : ℂ) :
    ∃ b : Rows ℂ, UnitRows b ∧
      (b = a ∨ b = reflectRows a) ∧
      rowS b = rowS a ∧ rowT b = rowT a ∧ rowR b = rowR a ∧
      Complex.normSq (sideModeB b w) ≤ Complex.normSq (sideModeA b w) := by
  by_cases ho : Complex.normSq (sideModeB a w) ≤ Complex.normSq (sideModeA a w)
  · exact ⟨a,ha,Or.inl rfl,rfl,rfl,rfl,ho⟩
  · obtain ⟨hs,ht,hr⟩ := reflectRows_correlations a
    obtain ⟨hA,hB,_,_⟩ := reflectRows_modes a w
    refine ⟨reflectRows a,reflectRows_unit a ha,Or.inr rfl,hs,ht,hr,?_⟩
    rw [hA,hB]
    exact le_of_lt (lt_of_not_ge ho)

#print axioms reflectRows_unit
#print axioms reflectRows_correlations
#print axioms reflectRows_modes
#print axioms reflectRows_matrix
#print axioms choose_oriented_rows
end
end StrictReconstruction20261007.SideIntrinsic
