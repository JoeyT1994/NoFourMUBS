import NoFourMUBs.Step2.SOS.MomentExponentData
import NoFourMUBs.Step2.MatchedUnique
import OAI.Analysis.MutuallyUnbiased.Moments.MomentSymmetry

/-! The existing certificate's 55 Laurent terms, interpreted on a phase block.
Only entry inverses occur; no determinant or exceptional parameter is inverted. -/

noncomputable section
open scoped BigOperators ComplexConjugate
open Hadamard6 OAI.MUB6
namespace NoFourMUBs.Step2.SOS
set_option maxRecDepth 20000
set_option maxHeartbeats 5000000

theorem psiExponent_lower_bound (k : Fin 55) (i j : Fin 3) :
    -1 ≤ psiExponent k i j := by
  fin_cases k <;> fin_cases i <;> fin_cases j
  · change (-1 : ℤ) ≤ (2 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (2 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (2 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (2 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (2 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (2 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (2 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (2 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (2 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (2 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (2 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (2 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (2 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (2 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (2 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (2 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (2 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (2 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (2 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (2 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (2 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (2 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (2 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (2 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (2 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (2 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (2 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (2 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (2 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (2 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (2 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (2 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (2 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (0 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (2 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (2 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (2 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num
  · change (-1 : ℤ) ≤ (-1 : ℤ); norm_num

/-- Clear the nine entry denominators to get a polynomial identity. -/
theorem psi_polynomial (B : Mat3) :
    permanent3 B * B.det ^ 2 =
      ∑ k : Fin 55, (psiCoefficient k : ℂ) *
        ∏ i, ∏ j, B i j ^ (psiExponent k i j + 1).toNat := by
  rw [permanent3_expand, Matrix.det_fin_three]
  have hsum (f : Fin 55 → ℂ) : (∑ k, f k) = (f 0 + (f 1 + (f 2 + (f 3 + (f 4 + (f 5 + (f 6 + (f 7 + (f 8 + (f 9 + (f 10 + (f 11 + (f 12 + (f 13 + (f 14 + (f 15 + (f 16 + (f 17 + (f 18 + (f 19 + (f 20 + (f 21 + (f 22 + (f 23 + (f 24 + (f 25 + (f 26 + (f 27 + (f 28 + (f 29 + (f 30 + (f 31 + (f 32 + (f 33 + (f 34 + (f 35 + (f 36 + (f 37 + (f 38 + (f 39 + (f 40 + (f 41 + (f 42 + (f 43 + (f 44 + (f 45 + (f 46 + (f 47 + (f 48 + (f 49 + (f 50 + (f 51 + (f 52 + (f 53 + f 54)))))))))))))))))))))))))))))))))))))))))))))))))))))) := by
    simp only [Fin.sum_univ_succ, Fin.sum_univ_zero, add_zero] <;> rfl
  rw [hsum]
  simp only [Fin.prod_univ_succ, Fin.prod_univ_zero, mul_one]
  change _ = (((1 : ℤ) : ℂ) * ((B 0 0 ^ (3 : ℕ) * (B 0 1 ^ (0 : ℕ) * B 0 2 ^ (0 : ℕ))) * ((B 1 0 ^ (0 : ℕ) * (B 1 1 ^ (3 : ℕ) * B 1 2 ^ (0 : ℕ))) * (B 2 0 ^ (0 : ℕ) * (B 2 1 ^ (0 : ℕ) * B 2 2 ^ (3 : ℕ))))) + (((-1 : ℤ) : ℂ) * ((B 0 0 ^ (3 : ℕ) * (B 0 1 ^ (0 : ℕ) * B 0 2 ^ (0 : ℕ))) * ((B 1 0 ^ (0 : ℕ) * (B 1 1 ^ (2 : ℕ) * B 1 2 ^ (1 : ℕ))) * (B 2 0 ^ (0 : ℕ) * (B 2 1 ^ (1 : ℕ) * B 2 2 ^ (2 : ℕ))))) + (((-1 : ℤ) : ℂ) * ((B 0 0 ^ (2 : ℕ) * (B 0 1 ^ (1 : ℕ) * B 0 2 ^ (0 : ℕ))) * ((B 1 0 ^ (1 : ℕ) * (B 1 1 ^ (2 : ℕ) * B 1 2 ^ (0 : ℕ))) * (B 2 0 ^ (0 : ℕ) * (B 2 1 ^ (0 : ℕ) * B 2 2 ^ (3 : ℕ))))) + (((3 : ℤ) : ℂ) * ((B 0 0 ^ (2 : ℕ) * (B 0 1 ^ (1 : ℕ) * B 0 2 ^ (0 : ℕ))) * ((B 1 0 ^ (0 : ℕ) * (B 1 1 ^ (2 : ℕ) * B 1 2 ^ (1 : ℕ))) * (B 2 0 ^ (1 : ℕ) * (B 2 1 ^ (0 : ℕ) * B 2 2 ^ (2 : ℕ))))) + (((3 : ℤ) : ℂ) * ((B 0 0 ^ (2 : ℕ) * (B 0 1 ^ (0 : ℕ) * B 0 2 ^ (1 : ℕ))) * ((B 1 0 ^ (1 : ℕ) * (B 1 1 ^ (2 : ℕ) * B 1 2 ^ (0 : ℕ))) * (B 2 0 ^ (0 : ℕ) * (B 2 1 ^ (1 : ℕ) * B 2 2 ^ (2 : ℕ))))) + (((-1 : ℤ) : ℂ) * ((B 0 0 ^ (2 : ℕ) * (B 0 1 ^ (0 : ℕ) * B 0 2 ^ (1 : ℕ))) * ((B 1 0 ^ (0 : ℕ) * (B 1 1 ^ (3 : ℕ) * B 1 2 ^ (0 : ℕ))) * (B 2 0 ^ (1 : ℕ) * (B 2 1 ^ (0 : ℕ) * B 2 2 ^ (2 : ℕ))))) + (((-1 : ℤ) : ℂ) * ((B 0 0 ^ (3 : ℕ) * (B 0 1 ^ (0 : ℕ) * B 0 2 ^ (0 : ℕ))) * ((B 1 0 ^ (0 : ℕ) * (B 1 1 ^ (1 : ℕ) * B 1 2 ^ (2 : ℕ))) * (B 2 0 ^ (0 : ℕ) * (B 2 1 ^ (2 : ℕ) * B 2 2 ^ (1 : ℕ))))) + (((-2 : ℤ) : ℂ) * ((B 0 0 ^ (2 : ℕ) * (B 0 1 ^ (1 : ℕ) * B 0 2 ^ (0 : ℕ))) * ((B 1 0 ^ (1 : ℕ) * (B 1 1 ^ (1 : ℕ) * B 1 2 ^ (1 : ℕ))) * (B 2 0 ^ (0 : ℕ) * (B 2 1 ^ (1 : ℕ) * B 2 2 ^ (2 : ℕ))))) + (((-2 : ℤ) : ℂ) * ((B 0 0 ^ (2 : ℕ) * (B 0 1 ^ (1 : ℕ) * B 0 2 ^ (0 : ℕ))) * ((B 1 0 ^ (0 : ℕ) * (B 1 1 ^ (1 : ℕ) * B 1 2 ^ (2 : ℕ))) * (B 2 0 ^ (1 : ℕ) * (B 2 1 ^ (1 : ℕ) * B 2 2 ^ (1 : ℕ))))) + (((-2 : ℤ) : ℂ) * ((B 0 0 ^ (2 : ℕ) * (B 0 1 ^ (0 : ℕ) * B 0 2 ^ (1 : ℕ))) * ((B 1 0 ^ (1 : ℕ) * (B 1 1 ^ (1 : ℕ) * B 1 2 ^ (1 : ℕ))) * (B 2 0 ^ (0 : ℕ) * (B 2 1 ^ (2 : ℕ) * B 2 2 ^ (1 : ℕ))))) + (((-2 : ℤ) : ℂ) * ((B 0 0 ^ (2 : ℕ) * (B 0 1 ^ (0 : ℕ) * B 0 2 ^ (1 : ℕ))) * ((B 1 0 ^ (0 : ℕ) * (B 1 1 ^ (2 : ℕ) * B 1 2 ^ (1 : ℕ))) * (B 2 0 ^ (1 : ℕ) * (B 2 1 ^ (1 : ℕ) * B 2 2 ^ (1 : ℕ))))) + (((-1 : ℤ) : ℂ) * ((B 0 0 ^ (1 : ℕ) * (B 0 1 ^ (2 : ℕ) * B 0 2 ^ (0 : ℕ))) * ((B 1 0 ^ (2 : ℕ) * (B 1 1 ^ (1 : ℕ) * B 1 2 ^ (0 : ℕ))) * (B 2 0 ^ (0 : ℕ) * (B 2 1 ^ (0 : ℕ) * B 2 2 ^ (3 : ℕ))))) + (((-2 : ℤ) : ℂ) * ((B 0 0 ^ (1 : ℕ) * (B 0 1 ^ (2 : ℕ) * B 0 2 ^ (0 : ℕ))) * ((B 1 0 ^ (1 : ℕ) * (B 1 1 ^ (1 : ℕ) * B 1 2 ^ (1 : ℕ))) * (B 2 0 ^ (1 : ℕ) * (B 2 1 ^ (0 : ℕ) * B 2 2 ^ (2 : ℕ))))) + (((-2 : ℤ) : ℂ) * ((B 0 0 ^ (1 : ℕ) * (B 0 1 ^ (1 : ℕ) * B 0 2 ^ (1 : ℕ))) * ((B 1 0 ^ (2 : ℕ) * (B 1 1 ^ (1 : ℕ) * B 1 2 ^ (0 : ℕ))) * (B 2 0 ^ (0 : ℕ) * (B 2 1 ^ (1 : ℕ) * B 2 2 ^ (2 : ℕ))))) + (((-2 : ℤ) : ℂ) * ((B 0 0 ^ (1 : ℕ) * (B 0 1 ^ (1 : ℕ) * B 0 2 ^ (1 : ℕ))) * ((B 1 0 ^ (1 : ℕ) * (B 1 1 ^ (2 : ℕ) * B 1 2 ^ (0 : ℕ))) * (B 2 0 ^ (1 : ℕ) * (B 2 1 ^ (0 : ℕ) * B 2 2 ^ (2 : ℕ))))) + (((3 : ℤ) : ℂ) * ((B 0 0 ^ (1 : ℕ) * (B 0 1 ^ (2 : ℕ) * B 0 2 ^ (0 : ℕ))) * ((B 1 0 ^ (0 : ℕ) * (B 1 1 ^ (1 : ℕ) * B 1 2 ^ (2 : ℕ))) * (B 2 0 ^ (2 : ℕ) * (B 2 1 ^ (0 : ℕ) * B 2 2 ^ (1 : ℕ))))) + (((12 : ℤ) : ℂ) * ((B 0 0 ^ (1 : ℕ) * (B 0 1 ^ (1 : ℕ) * B 0 2 ^ (1 : ℕ))) * ((B 1 0 ^ (1 : ℕ) * (B 1 1 ^ (1 : ℕ) * B 1 2 ^ (1 : ℕ))) * (B 2 0 ^ (1 : ℕ) * (B 2 1 ^ (1 : ℕ) * B 2 2 ^ (1 : ℕ))))) + (((-2 : ℤ) : ℂ) * ((B 0 0 ^ (1 : ℕ) * (B 0 1 ^ (1 : ℕ) * B 0 2 ^ (1 : ℕ))) * ((B 1 0 ^ (0 : ℕ) * (B 1 1 ^ (2 : ℕ) * B 1 2 ^ (1 : ℕ))) * (B 2 0 ^ (2 : ℕ) * (B 2 1 ^ (0 : ℕ) * B 2 2 ^ (1 : ℕ))))) + (((3 : ℤ) : ℂ) * ((B 0 0 ^ (1 : ℕ) * (B 0 1 ^ (0 : ℕ) * B 0 2 ^ (2 : ℕ))) * ((B 1 0 ^ (2 : ℕ) * (B 1 1 ^ (1 : ℕ) * B 1 2 ^ (0 : ℕ))) * (B 2 0 ^ (0 : ℕ) * (B 2 1 ^ (2 : ℕ) * B 2 2 ^ (1 : ℕ))))) + (((-2 : ℤ) : ℂ) * ((B 0 0 ^ (1 : ℕ) * (B 0 1 ^ (0 : ℕ) * B 0 2 ^ (2 : ℕ))) * ((B 1 0 ^ (1 : ℕ) * (B 1 1 ^ (2 : ℕ) * B 1 2 ^ (0 : ℕ))) * (B 2 0 ^ (1 : ℕ) * (B 2 1 ^ (1 : ℕ) * B 2 2 ^ (1 : ℕ))))) + (((-1 : ℤ) : ℂ) * ((B 0 0 ^ (1 : ℕ) * (B 0 1 ^ (0 : ℕ) * B 0 2 ^ (2 : ℕ))) * ((B 1 0 ^ (0 : ℕ) * (B 1 1 ^ (3 : ℕ) * B 1 2 ^ (0 : ℕ))) * (B 2 0 ^ (2 : ℕ) * (B 2 1 ^ (0 : ℕ) * B 2 2 ^ (1 : ℕ))))) + (((1 : ℤ) : ℂ) * ((B 0 0 ^ (3 : ℕ) * (B 0 1 ^ (0 : ℕ) * B 0 2 ^ (0 : ℕ))) * ((B 1 0 ^ (0 : ℕ) * (B 1 1 ^ (0 : ℕ) * B 1 2 ^ (3 : ℕ))) * (B 2 0 ^ (0 : ℕ) * (B 2 1 ^ (3 : ℕ) * B 2 2 ^ (0 : ℕ))))) + (((3 : ℤ) : ℂ) * ((B 0 0 ^ (2 : ℕ) * (B 0 1 ^ (1 : ℕ) * B 0 2 ^ (0 : ℕ))) * ((B 1 0 ^ (1 : ℕ) * (B 1 1 ^ (0 : ℕ) * B 1 2 ^ (2 : ℕ))) * (B 2 0 ^ (0 : ℕ) * (B 2 1 ^ (2 : ℕ) * B 2 2 ^ (1 : ℕ))))) + (((-1 : ℤ) : ℂ) * ((B 0 0 ^ (2 : ℕ) * (B 0 1 ^ (1 : ℕ) * B 0 2 ^ (0 : ℕ))) * ((B 1 0 ^ (0 : ℕ) * (B 1 1 ^ (0 : ℕ) * B 1 2 ^ (3 : ℕ))) * (B 2 0 ^ (1 : ℕ) * (B 2 1 ^ (2 : ℕ) * B 2 2 ^ (0 : ℕ))))) + (((-1 : ℤ) : ℂ) * ((B 0 0 ^ (2 : ℕ) * (B 0 1 ^ (0 : ℕ) * B 0 2 ^ (1 : ℕ))) * ((B 1 0 ^ (1 : ℕ) * (B 1 1 ^ (0 : ℕ) * B 1 2 ^ (2 : ℕ))) * (B 2 0 ^ (0 : ℕ) * (B 2 1 ^ (3 : ℕ) * B 2 2 ^ (0 : ℕ))))) + (((3 : ℤ) : ℂ) * ((B 0 0 ^ (2 : ℕ) * (B 0 1 ^ (0 : ℕ) * B 0 2 ^ (1 : ℕ))) * ((B 1 0 ^ (0 : ℕ) * (B 1 1 ^ (1 : ℕ) * B 1 2 ^ (2 : ℕ))) * (B 2 0 ^ (1 : ℕ) * (B 2 1 ^ (2 : ℕ) * B 2 2 ^ (0 : ℕ))))) + (((3 : ℤ) : ℂ) * ((B 0 0 ^ (1 : ℕ) * (B 0 1 ^ (2 : ℕ) * B 0 2 ^ (0 : ℕ))) * ((B 1 0 ^ (2 : ℕ) * (B 1 1 ^ (0 : ℕ) * B 1 2 ^ (1 : ℕ))) * (B 2 0 ^ (0 : ℕ) * (B 2 1 ^ (1 : ℕ) * B 2 2 ^ (2 : ℕ))))) + (((-2 : ℤ) : ℂ) * ((B 0 0 ^ (1 : ℕ) * (B 0 1 ^ (2 : ℕ) * B 0 2 ^ (0 : ℕ))) * ((B 1 0 ^ (1 : ℕ) * (B 1 1 ^ (0 : ℕ) * B 1 2 ^ (2 : ℕ))) * (B 2 0 ^ (1 : ℕ) * (B 2 1 ^ (1 : ℕ) * B 2 2 ^ (1 : ℕ))))) + (((-2 : ℤ) : ℂ) * ((B 0 0 ^ (1 : ℕ) * (B 0 1 ^ (1 : ℕ) * B 0 2 ^ (1 : ℕ))) * ((B 1 0 ^ (2 : ℕ) * (B 1 1 ^ (0 : ℕ) * B 1 2 ^ (1 : ℕ))) * (B 2 0 ^ (0 : ℕ) * (B 2 1 ^ (2 : ℕ) * B 2 2 ^ (1 : ℕ))))) + (((-1 : ℤ) : ℂ) * ((B 0 0 ^ (1 : ℕ) * (B 0 1 ^ (2 : ℕ) * B 0 2 ^ (0 : ℕ))) * ((B 1 0 ^ (0 : ℕ) * (B 1 1 ^ (0 : ℕ) * B 1 2 ^ (3 : ℕ))) * (B 2 0 ^ (2 : ℕ) * (B 2 1 ^ (1 : ℕ) * B 2 2 ^ (0 : ℕ))))) + (((-2 : ℤ) : ℂ) * ((B 0 0 ^ (1 : ℕ) * (B 0 1 ^ (1 : ℕ) * B 0 2 ^ (1 : ℕ))) * ((B 1 0 ^ (1 : ℕ) * (B 1 1 ^ (0 : ℕ) * B 1 2 ^ (2 : ℕ))) * (B 2 0 ^ (1 : ℕ) * (B 2 1 ^ (2 : ℕ) * B 2 2 ^ (0 : ℕ))))) + (((-2 : ℤ) : ℂ) * ((B 0 0 ^ (1 : ℕ) * (B 0 1 ^ (1 : ℕ) * B 0 2 ^ (1 : ℕ))) * ((B 1 0 ^ (0 : ℕ) * (B 1 1 ^ (1 : ℕ) * B 1 2 ^ (2 : ℕ))) * (B 2 0 ^ (2 : ℕ) * (B 2 1 ^ (1 : ℕ) * B 2 2 ^ (0 : ℕ))))) + (((-1 : ℤ) : ℂ) * ((B 0 0 ^ (1 : ℕ) * (B 0 1 ^ (0 : ℕ) * B 0 2 ^ (2 : ℕ))) * ((B 1 0 ^ (2 : ℕ) * (B 1 1 ^ (0 : ℕ) * B 1 2 ^ (1 : ℕ))) * (B 2 0 ^ (0 : ℕ) * (B 2 1 ^ (3 : ℕ) * B 2 2 ^ (0 : ℕ))))) + (((-2 : ℤ) : ℂ) * ((B 0 0 ^ (1 : ℕ) * (B 0 1 ^ (0 : ℕ) * B 0 2 ^ (2 : ℕ))) * ((B 1 0 ^ (1 : ℕ) * (B 1 1 ^ (1 : ℕ) * B 1 2 ^ (1 : ℕ))) * (B 2 0 ^ (1 : ℕ) * (B 2 1 ^ (2 : ℕ) * B 2 2 ^ (0 : ℕ))))) + (((3 : ℤ) : ℂ) * ((B 0 0 ^ (1 : ℕ) * (B 0 1 ^ (0 : ℕ) * B 0 2 ^ (2 : ℕ))) * ((B 1 0 ^ (0 : ℕ) * (B 1 1 ^ (2 : ℕ) * B 1 2 ^ (1 : ℕ))) * (B 2 0 ^ (2 : ℕ) * (B 2 1 ^ (1 : ℕ) * B 2 2 ^ (0 : ℕ))))) + (((1 : ℤ) : ℂ) * ((B 0 0 ^ (0 : ℕ) * (B 0 1 ^ (3 : ℕ) * B 0 2 ^ (0 : ℕ))) * ((B 1 0 ^ (3 : ℕ) * (B 1 1 ^ (0 : ℕ) * B 1 2 ^ (0 : ℕ))) * (B 2 0 ^ (0 : ℕ) * (B 2 1 ^ (0 : ℕ) * B 2 2 ^ (3 : ℕ))))) + (((-1 : ℤ) : ℂ) * ((B 0 0 ^ (0 : ℕ) * (B 0 1 ^ (3 : ℕ) * B 0 2 ^ (0 : ℕ))) * ((B 1 0 ^ (2 : ℕ) * (B 1 1 ^ (0 : ℕ) * B 1 2 ^ (1 : ℕ))) * (B 2 0 ^ (1 : ℕ) * (B 2 1 ^ (0 : ℕ) * B 2 2 ^ (2 : ℕ))))) + (((-1 : ℤ) : ℂ) * ((B 0 0 ^ (0 : ℕ) * (B 0 1 ^ (2 : ℕ) * B 0 2 ^ (1 : ℕ))) * ((B 1 0 ^ (3 : ℕ) * (B 1 1 ^ (0 : ℕ) * B 1 2 ^ (0 : ℕ))) * (B 2 0 ^ (0 : ℕ) * (B 2 1 ^ (1 : ℕ) * B 2 2 ^ (2 : ℕ))))) + (((3 : ℤ) : ℂ) * ((B 0 0 ^ (0 : ℕ) * (B 0 1 ^ (2 : ℕ) * B 0 2 ^ (1 : ℕ))) * ((B 1 0 ^ (2 : ℕ) * (B 1 1 ^ (1 : ℕ) * B 1 2 ^ (0 : ℕ))) * (B 2 0 ^ (1 : ℕ) * (B 2 1 ^ (0 : ℕ) * B 2 2 ^ (2 : ℕ))))) + (((-1 : ℤ) : ℂ) * ((B 0 0 ^ (0 : ℕ) * (B 0 1 ^ (3 : ℕ) * B 0 2 ^ (0 : ℕ))) * ((B 1 0 ^ (1 : ℕ) * (B 1 1 ^ (0 : ℕ) * B 1 2 ^ (2 : ℕ))) * (B 2 0 ^ (2 : ℕ) * (B 2 1 ^ (0 : ℕ) * B 2 2 ^ (1 : ℕ))))) + (((-2 : ℤ) : ℂ) * ((B 0 0 ^ (0 : ℕ) * (B 0 1 ^ (2 : ℕ) * B 0 2 ^ (1 : ℕ))) * ((B 1 0 ^ (2 : ℕ) * (B 1 1 ^ (0 : ℕ) * B 1 2 ^ (1 : ℕ))) * (B 2 0 ^ (1 : ℕ) * (B 2 1 ^ (1 : ℕ) * B 2 2 ^ (1 : ℕ))))) + (((-2 : ℤ) : ℂ) * ((B 0 0 ^ (0 : ℕ) * (B 0 1 ^ (2 : ℕ) * B 0 2 ^ (1 : ℕ))) * ((B 1 0 ^ (1 : ℕ) * (B 1 1 ^ (1 : ℕ) * B 1 2 ^ (1 : ℕ))) * (B 2 0 ^ (2 : ℕ) * (B 2 1 ^ (0 : ℕ) * B 2 2 ^ (1 : ℕ))))) + (((-1 : ℤ) : ℂ) * ((B 0 0 ^ (0 : ℕ) * (B 0 1 ^ (1 : ℕ) * B 0 2 ^ (2 : ℕ))) * ((B 1 0 ^ (3 : ℕ) * (B 1 1 ^ (0 : ℕ) * B 1 2 ^ (0 : ℕ))) * (B 2 0 ^ (0 : ℕ) * (B 2 1 ^ (2 : ℕ) * B 2 2 ^ (1 : ℕ))))) + (((-2 : ℤ) : ℂ) * ((B 0 0 ^ (0 : ℕ) * (B 0 1 ^ (1 : ℕ) * B 0 2 ^ (2 : ℕ))) * ((B 1 0 ^ (2 : ℕ) * (B 1 1 ^ (1 : ℕ) * B 1 2 ^ (0 : ℕ))) * (B 2 0 ^ (1 : ℕ) * (B 2 1 ^ (1 : ℕ) * B 2 2 ^ (1 : ℕ))))) + (((3 : ℤ) : ℂ) * ((B 0 0 ^ (0 : ℕ) * (B 0 1 ^ (1 : ℕ) * B 0 2 ^ (2 : ℕ))) * ((B 1 0 ^ (1 : ℕ) * (B 1 1 ^ (2 : ℕ) * B 1 2 ^ (0 : ℕ))) * (B 2 0 ^ (2 : ℕ) * (B 2 1 ^ (0 : ℕ) * B 2 2 ^ (1 : ℕ))))) + (((1 : ℤ) : ℂ) * ((B 0 0 ^ (0 : ℕ) * (B 0 1 ^ (3 : ℕ) * B 0 2 ^ (0 : ℕ))) * ((B 1 0 ^ (0 : ℕ) * (B 1 1 ^ (0 : ℕ) * B 1 2 ^ (3 : ℕ))) * (B 2 0 ^ (3 : ℕ) * (B 2 1 ^ (0 : ℕ) * B 2 2 ^ (0 : ℕ))))) + (((3 : ℤ) : ℂ) * ((B 0 0 ^ (0 : ℕ) * (B 0 1 ^ (2 : ℕ) * B 0 2 ^ (1 : ℕ))) * ((B 1 0 ^ (1 : ℕ) * (B 1 1 ^ (0 : ℕ) * B 1 2 ^ (2 : ℕ))) * (B 2 0 ^ (2 : ℕ) * (B 2 1 ^ (1 : ℕ) * B 2 2 ^ (0 : ℕ))))) + (((-1 : ℤ) : ℂ) * ((B 0 0 ^ (0 : ℕ) * (B 0 1 ^ (2 : ℕ) * B 0 2 ^ (1 : ℕ))) * ((B 1 0 ^ (0 : ℕ) * (B 1 1 ^ (1 : ℕ) * B 1 2 ^ (2 : ℕ))) * (B 2 0 ^ (3 : ℕ) * (B 2 1 ^ (0 : ℕ) * B 2 2 ^ (0 : ℕ))))) + (((3 : ℤ) : ℂ) * ((B 0 0 ^ (0 : ℕ) * (B 0 1 ^ (1 : ℕ) * B 0 2 ^ (2 : ℕ))) * ((B 1 0 ^ (2 : ℕ) * (B 1 1 ^ (0 : ℕ) * B 1 2 ^ (1 : ℕ))) * (B 2 0 ^ (1 : ℕ) * (B 2 1 ^ (2 : ℕ) * B 2 2 ^ (0 : ℕ))))) + (((-2 : ℤ) : ℂ) * ((B 0 0 ^ (0 : ℕ) * (B 0 1 ^ (1 : ℕ) * B 0 2 ^ (2 : ℕ))) * ((B 1 0 ^ (1 : ℕ) * (B 1 1 ^ (1 : ℕ) * B 1 2 ^ (1 : ℕ))) * (B 2 0 ^ (2 : ℕ) * (B 2 1 ^ (1 : ℕ) * B 2 2 ^ (0 : ℕ))))) + (((-1 : ℤ) : ℂ) * ((B 0 0 ^ (0 : ℕ) * (B 0 1 ^ (1 : ℕ) * B 0 2 ^ (2 : ℕ))) * ((B 1 0 ^ (0 : ℕ) * (B 1 1 ^ (2 : ℕ) * B 1 2 ^ (1 : ℕ))) * (B 2 0 ^ (3 : ℕ) * (B 2 1 ^ (0 : ℕ) * B 2 2 ^ (0 : ℕ))))) + (((1 : ℤ) : ℂ) * ((B 0 0 ^ (0 : ℕ) * (B 0 1 ^ (0 : ℕ) * B 0 2 ^ (3 : ℕ))) * ((B 1 0 ^ (3 : ℕ) * (B 1 1 ^ (0 : ℕ) * B 1 2 ^ (0 : ℕ))) * (B 2 0 ^ (0 : ℕ) * (B 2 1 ^ (3 : ℕ) * B 2 2 ^ (0 : ℕ))))) + (((-1 : ℤ) : ℂ) * ((B 0 0 ^ (0 : ℕ) * (B 0 1 ^ (0 : ℕ) * B 0 2 ^ (3 : ℕ))) * ((B 1 0 ^ (2 : ℕ) * (B 1 1 ^ (1 : ℕ) * B 1 2 ^ (0 : ℕ))) * (B 2 0 ^ (1 : ℕ) * (B 2 1 ^ (2 : ℕ) * B 2 2 ^ (0 : ℕ))))) + (((-1 : ℤ) : ℂ) * ((B 0 0 ^ (0 : ℕ) * (B 0 1 ^ (0 : ℕ) * B 0 2 ^ (3 : ℕ))) * ((B 1 0 ^ (1 : ℕ) * (B 1 1 ^ (2 : ℕ) * B 1 2 ^ (0 : ℕ))) * (B 2 0 ^ (2 : ℕ) * (B 2 1 ^ (1 : ℕ) * B 2 2 ^ (0 : ℕ))))) + ((1 : ℤ) : ℂ) * ((B 0 0 ^ (0 : ℕ) * (B 0 1 ^ (0 : ℕ) * B 0 2 ^ (3 : ℕ))) * ((B 1 0 ^ (0 : ℕ) * (B 1 1 ^ (3 : ℕ) * B 1 2 ^ (0 : ℕ))) * (B 2 0 ^ (3 : ℕ) * (B 2 1 ^ (0 : ℕ) * B 2 2 ^ (0 : ℕ)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
  norm_num
  ring

/-- Restore the denominators using the existing unit-entry inverse lemma. -/
theorem sideSignature_laurent (B : Mat3)
    (hB : ∀ i j, Complex.normSq (B i j) = 1) :
    sideSignature B = -(∑ k : Fin 55, (psiCoefficient k : ℂ) *
      ∏ i, ∏ j, B i j ^ psiExponent k i j) := by
  have hterm (k : Fin 55) :
      (∏ i, ∏ j, B i j ^ (psiExponent k i j + 1).toNat) *
        (∏ i, ∏ j, star (B i j)) = ∏ i, ∏ j, B i j ^ psiExponent k i j := by
    rw [← Finset.prod_mul_distrib]
    apply Finset.prod_congr rfl
    intro i _
    rw [← Finset.prod_mul_distrib]
    apply Finset.prod_congr rfl
    intro j _
    have hb := psiExponent_lower_bound k i j
    have hp : 0 ≤ psiExponent k i j + 1 := by omega
    rw [← zpow_natCast, Int.toNat_of_nonneg hp]
    change B i j ^ (psiExponent k i j + 1) * conj (B i j) = _
    rw [← unit_inv_eq_conj (hB i j), ← zpow_neg_one,
      ← zpow_add₀ (unit_ne_zero (hB i j))]
    congr 1
    omega
  calc
    sideSignature B = -((permanent3 B * B.det ^ 2) *
        (∏ i, ∏ j, star (B i j))) := by unfold sideSignature; ring
    _ = -((∑ k : Fin 55, (psiCoefficient k : ℂ) *
        ∏ i, ∏ j, B i j ^ (psiExponent k i j + 1).toNat) *
        (∏ i, ∏ j, star (B i j))) := by rw [psi_polynomial]
    _ = _ := by
      congr 1
      rw [Finset.sum_mul]
      apply Finset.sum_congr rfl
      intro k _
      rw [mul_assoc, hterm]

end NoFourMUBs.Step2.SOS
