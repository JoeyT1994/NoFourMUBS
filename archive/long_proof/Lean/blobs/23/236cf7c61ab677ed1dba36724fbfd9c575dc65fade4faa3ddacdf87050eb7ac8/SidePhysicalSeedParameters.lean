import StrictSeedGuards
import PhysicalBlockRecovery
import Mathlib.Tactic.FinCases

/-! Literal parameter binding: the actual complementary side Gram parameters
are exactly the supplied recipe's functions of the upper-left seed. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace StrictReconstruction20261007.SideIntrinsic
open Centiradian20261006 Centiradian20261006.NativeSigned20261006
open scoped ComplexConjugate Matrix
noncomputable section

theorem blockE_gram_entry (H : Mat6) (i j : Fin 3) :
    (blockE H * (blockE H)ᴴ) i j =
      gramEntry H leadingCols (upperIndex i) (upperIndex j) := by
  simp [blockE,Matrix.mul_apply,Matrix.conjTranspose_apply,Complex.star_def,
    gramEntry,leadingCols,upperIndex,Fin.sum_univ_three,add_assoc]

theorem physical_seed_parameter_binding {H : Mat6} (hH : Physical H) :
    rightGram H 1 0=seedS (blockE H) ∧
    rightGram H 2 0=seedT (blockE H) ∧
    rightGram H 2 1=seedR (blockE H) := by
  refine ⟨?_,?_,?_⟩
  · rw [physical_rightGram_negative hH 1 0 (by decide),
      seedS_eq_negative_rowGram,blockE_gram_entry]
  · rw [physical_rightGram_negative hH 2 0 (by decide)]
    exact congrArg Neg.neg (blockE_gram_entry H 2 0).symm
  · rw [physical_rightGram_negative hH 2 1 (by decide),
      seedR_eq_negative_rowGram,blockE_gram_entry]

theorem physical_leadingR_seed_parameters {H : Mat6} (hH : Physical H) :
    leadingR H=gramInvariant (seedS (blockE H)) (seedT (blockE H)) (seedR (blockE H)) := by
  obtain ⟨hs,ht,hr⟩ := physical_seed_parameter_binding hH
  rw [physical_leadingR_rightGram hH,hs,ht,hr]

theorem dephased_blockE_corner {H : Mat6} (hd : Dephased H) :
    blockE H=Hadamard6.corner (H 1 1) (H 1 2) (H 2 1) (H 2 2) := by
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [blockE,upperIndex,Hadamard6.corner,hd.1,hd.2]

#print axioms blockE_gram_entry
#print axioms physical_seed_parameter_binding
#print axioms physical_leadingR_seed_parameters
#print axioms dephased_blockE_corner
end
end StrictReconstruction20261007.SideIntrinsic
