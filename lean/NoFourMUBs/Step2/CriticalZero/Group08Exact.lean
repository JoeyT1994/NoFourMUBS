import NoFourMUBs.Step2.CriticalZero.Group08Check00
import NoFourMUBs.Step2.CriticalZero.Group08Check01
import NoFourMUBs.Step2.CriticalZero.Group08Check02
import NoFourMUBs.Step2.CriticalZero.Group08Check03
import NoFourMUBs.Step2.CriticalZero.Group08Check04
import NoFourMUBs.Step2.CriticalZero.Group08Check05
import NoFourMUBs.Step2.CriticalZero.Group08Check06
import NoFourMUBs.Step2.CriticalZero.Group08Check07
import NoFourMUBs.Step2.CriticalZero.Group08Check08
import NoFourMUBs.Step2.CriticalZero.Group08Check09
import NoFourMUBs.Step2.CriticalZero.Group08Check10
import NoFourMUBs.Step2.CriticalZero.Group08Check11
import NoFourMUBs.Step2.CriticalZero.Group08Check12
import NoFourMUBs.Step2.CriticalZero.Group08Check13
import NoFourMUBs.Step2.CriticalZero.Group08Check14
import NoFourMUBs.Step2.CriticalZero.Group08Check15
import NoFourMUBs.Step2.CriticalZero.Group08Check16
import NoFourMUBs.Step2.CriticalZero.Group08Check17
import NoFourMUBs.Step2.CriticalZero.Group08Check18
import NoFourMUBs.Step2.CriticalZero.Group08Check19
import NoFourMUBs.Step2.CriticalZero.Group08Check20
import NoFourMUBs.Step2.CriticalZero.Group08Check21
import NoFourMUBs.Step2.CriticalZero.Group08Check22
import NoFourMUBs.Step2.CriticalZero.Group08Check23
import NoFourMUBs.Step2.CriticalZero.Group08Check24
import NoFourMUBs.Step2.CriticalZero.Group08Check25
import NoFourMUBs.Step2.CriticalZero.Group08Check26
import NoFourMUBs.Step2.CriticalZero.Group08Check27
import NoFourMUBs.Step2.CriticalZero.Group08Check28
import NoFourMUBs.Step2.CriticalZero.Group08Check29
import NoFourMUBs.Step2.CriticalZero.Group08Check30
import NoFourMUBs.Step2.CriticalZero.Group08Check31
import NoFourMUBs.Step2.CriticalZero.Group08Check32
import NoFourMUBs.Step2.CriticalZero.Group08Check33
import NoFourMUBs.Step2.CriticalZero.Group08Check34
import NoFourMUBs.Step2.CriticalZero.Group08Check35
import NoFourMUBs.Step2.CriticalZero.Group08Check36
import Lean.Elab.Tactic.Omega

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 1500000
namespace CriticalZeroSumAssembly20261003
open CriticalZeroSplitReduction20261003

theorem group08_all_certificates (n : ℕ) (hn : n < group08DenseResidual.length) :
    IntegerReflector.zeroII (group08DenseResidual.getD n []) = true := by
  change n < 37 at hn
  have hc : n = 0 ∨ n = 1 ∨ n = 2 ∨ n = 3 ∨ n = 4 ∨ n = 5 ∨ n = 6 ∨ n = 7 ∨ n = 8 ∨ n = 9 ∨ n = 10 ∨ n = 11 ∨ n = 12 ∨ n = 13 ∨ n = 14 ∨ n = 15 ∨ n = 16 ∨ n = 17 ∨ n = 18 ∨ n = 19 ∨ n = 20 ∨ n = 21 ∨ n = 22 ∨ n = 23 ∨ n = 24 ∨ n = 25 ∨ n = 26 ∨ n = 27 ∨ n = 28 ∨ n = 29 ∨ n = 30 ∨ n = 31 ∨ n = 32 ∨ n = 33 ∨ n = 34 ∨ n = 35 ∨ n = 36 := by omega
  rcases hc with h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h
  · subst n
    exact group08_coefficient_00
  · subst n
    exact group08_coefficient_01
  · subst n
    exact group08_coefficient_02
  · subst n
    exact group08_coefficient_03
  · subst n
    exact group08_coefficient_04
  · subst n
    exact group08_coefficient_05
  · subst n
    exact group08_coefficient_06
  · subst n
    exact group08_coefficient_07
  · subst n
    exact group08_coefficient_08
  · subst n
    exact group08_coefficient_09
  · subst n
    exact group08_coefficient_10
  · subst n
    exact group08_coefficient_11
  · subst n
    exact group08_coefficient_12
  · subst n
    exact group08_coefficient_13
  · subst n
    exact group08_coefficient_14
  · subst n
    exact group08_coefficient_15
  · subst n
    exact group08_coefficient_16
  · subst n
    exact group08_coefficient_17
  · subst n
    exact group08_coefficient_18
  · subst n
    exact group08_coefficient_19
  · subst n
    exact group08_coefficient_20
  · subst n
    exact group08_coefficient_21
  · subst n
    exact group08_coefficient_22
  · subst n
    exact group08_coefficient_23
  · subst n
    exact group08_coefficient_24
  · subst n
    exact group08_coefficient_25
  · subst n
    exact group08_coefficient_26
  · subst n
    exact group08_coefficient_27
  · subst n
    exact group08_coefficient_28
  · subst n
    exact group08_coefficient_29
  · subst n
    exact group08_coefficient_30
  · subst n
    exact group08_coefficient_31
  · subst n
    exact group08_coefficient_32
  · subst n
    exact group08_coefficient_33
  · subst n
    exact group08_coefficient_34
  · subst n
    exact group08_coefficient_35
  · subst n
    exact group08_coefficient_36

noncomputable section
variable {K : Type*} [Field K] [CharZero K]

/-- Evaluation of the original ninth group equals its archived expansion. -/
theorem numerator_group08_eval_identity (X Y z : K) :
    Coefficients.eval z (ExprCoefficients.interpret X Y numeratorGroupOriginal_08) =
      Coefficients.eval z (ExprCoefficients.interpret X Y numeratorGroupExpanded_08) := by
  have hz := Coefficients.eval_allZero z
    (DenseCoefficients.interpret X Y group08DenseResidual)
    (DenseCoefficients.allZero_of_certificates X Y group08DenseResidual group08_all_certificates)
  rw [group08DenseResidual_interpret, numeratorGroupResidual_08,
    ExprCoefficients.interpret_add, ExprCoefficients.interpret_neg,
    Coefficients.eval_add, Coefficients.eval_neg] at hz
  exact sub_eq_zero.mp (by simpa only [sub_eq_add_neg] using hz)

end
end CriticalZeroSumAssembly20261003
