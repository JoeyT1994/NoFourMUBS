import NoFourMUBs.Step2.CriticalZero.Group05Check00
import NoFourMUBs.Step2.CriticalZero.Group05Check01
import NoFourMUBs.Step2.CriticalZero.Group05Check02
import NoFourMUBs.Step2.CriticalZero.Group05Check03
import NoFourMUBs.Step2.CriticalZero.Group05Check04
import NoFourMUBs.Step2.CriticalZero.Group05Check05
import NoFourMUBs.Step2.CriticalZero.Group05Check06
import NoFourMUBs.Step2.CriticalZero.Group05Check07
import NoFourMUBs.Step2.CriticalZero.Group05Check08
import NoFourMUBs.Step2.CriticalZero.Group05Check09
import NoFourMUBs.Step2.CriticalZero.Group05Check10
import NoFourMUBs.Step2.CriticalZero.Group05Check11
import NoFourMUBs.Step2.CriticalZero.Group05Check12
import NoFourMUBs.Step2.CriticalZero.Group05Check13
import NoFourMUBs.Step2.CriticalZero.Group05Check14
import NoFourMUBs.Step2.CriticalZero.Group05Check15
import NoFourMUBs.Step2.CriticalZero.Group05Check16
import NoFourMUBs.Step2.CriticalZero.Group05Check17
import NoFourMUBs.Step2.CriticalZero.Group05Check18
import NoFourMUBs.Step2.CriticalZero.Group05Check19
import NoFourMUBs.Step2.CriticalZero.Group05Check20
import NoFourMUBs.Step2.CriticalZero.Group05Check21
import NoFourMUBs.Step2.CriticalZero.Group05Check22
import NoFourMUBs.Step2.CriticalZero.Group05Check23
import NoFourMUBs.Step2.CriticalZero.Group05Check24
import NoFourMUBs.Step2.CriticalZero.Group05Check25
import NoFourMUBs.Step2.CriticalZero.Group05Check26
import NoFourMUBs.Step2.CriticalZero.Group05Check27
import NoFourMUBs.Step2.CriticalZero.Group05Check28
import NoFourMUBs.Step2.CriticalZero.Group05Check29
import NoFourMUBs.Step2.CriticalZero.Group05Check30
import NoFourMUBs.Step2.CriticalZero.Group05Check31
import NoFourMUBs.Step2.CriticalZero.Group05Check32
import NoFourMUBs.Step2.CriticalZero.Group05Check33
import NoFourMUBs.Step2.CriticalZero.Group05Check34
import NoFourMUBs.Step2.CriticalZero.Group05Check35
import NoFourMUBs.Step2.CriticalZero.Group05Check36
import Lean.Elab.Tactic.Omega

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 1500000
namespace CriticalZeroSumAssembly20261003
open CriticalZeroSplitReduction20261003

theorem group05_all_certificates (n : ℕ) (hn : n < group05DenseResidual.length) :
    IntegerReflector.zeroII (group05DenseResidual.getD n []) = true := by
  change n < 37 at hn
  have hc : n = 0 ∨ n = 1 ∨ n = 2 ∨ n = 3 ∨ n = 4 ∨ n = 5 ∨ n = 6 ∨ n = 7 ∨ n = 8 ∨ n = 9 ∨ n = 10 ∨ n = 11 ∨ n = 12 ∨ n = 13 ∨ n = 14 ∨ n = 15 ∨ n = 16 ∨ n = 17 ∨ n = 18 ∨ n = 19 ∨ n = 20 ∨ n = 21 ∨ n = 22 ∨ n = 23 ∨ n = 24 ∨ n = 25 ∨ n = 26 ∨ n = 27 ∨ n = 28 ∨ n = 29 ∨ n = 30 ∨ n = 31 ∨ n = 32 ∨ n = 33 ∨ n = 34 ∨ n = 35 ∨ n = 36 := by omega
  rcases hc with h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h
  · subst n
    exact group05_coefficient_00
  · subst n
    exact group05_coefficient_01
  · subst n
    exact group05_coefficient_02
  · subst n
    exact group05_coefficient_03
  · subst n
    exact group05_coefficient_04
  · subst n
    exact group05_coefficient_05
  · subst n
    exact group05_coefficient_06
  · subst n
    exact group05_coefficient_07
  · subst n
    exact group05_coefficient_08
  · subst n
    exact group05_coefficient_09
  · subst n
    exact group05_coefficient_10
  · subst n
    exact group05_coefficient_11
  · subst n
    exact group05_coefficient_12
  · subst n
    exact group05_coefficient_13
  · subst n
    exact group05_coefficient_14
  · subst n
    exact group05_coefficient_15
  · subst n
    exact group05_coefficient_16
  · subst n
    exact group05_coefficient_17
  · subst n
    exact group05_coefficient_18
  · subst n
    exact group05_coefficient_19
  · subst n
    exact group05_coefficient_20
  · subst n
    exact group05_coefficient_21
  · subst n
    exact group05_coefficient_22
  · subst n
    exact group05_coefficient_23
  · subst n
    exact group05_coefficient_24
  · subst n
    exact group05_coefficient_25
  · subst n
    exact group05_coefficient_26
  · subst n
    exact group05_coefficient_27
  · subst n
    exact group05_coefficient_28
  · subst n
    exact group05_coefficient_29
  · subst n
    exact group05_coefficient_30
  · subst n
    exact group05_coefficient_31
  · subst n
    exact group05_coefficient_32
  · subst n
    exact group05_coefficient_33
  · subst n
    exact group05_coefficient_34
  · subst n
    exact group05_coefficient_35
  · subst n
    exact group05_coefficient_36

noncomputable section
variable {K : Type*} [Field K] [CharZero K]

/-- Evaluation of the original sixth group equals its archived expansion. -/
theorem numerator_group05_eval_identity (X Y z : K) :
    Coefficients.eval z (ExprCoefficients.interpret X Y numeratorGroupOriginal_05) =
      Coefficients.eval z (ExprCoefficients.interpret X Y numeratorGroupExpanded_05) := by
  have hz := Coefficients.eval_allZero z
    (DenseCoefficients.interpret X Y group05DenseResidual)
    (DenseCoefficients.allZero_of_certificates X Y group05DenseResidual group05_all_certificates)
  rw [group05DenseResidual_interpret, numeratorGroupResidual_05,
    ExprCoefficients.interpret_add, ExprCoefficients.interpret_neg,
    Coefficients.eval_add, Coefficients.eval_neg] at hz
  exact sub_eq_zero.mp (by simpa only [sub_eq_add_neg] using hz)

end
end CriticalZeroSumAssembly20261003
