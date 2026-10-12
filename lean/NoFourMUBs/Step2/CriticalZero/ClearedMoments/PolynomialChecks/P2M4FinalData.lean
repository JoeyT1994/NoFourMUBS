import NoFourMUBs.Step2.CriticalZero.ClearedMoments.PolynomialChecks.P2M4Staged
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 1500000
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false
noncomputable section
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4
variable {F : Type*} [Field F] [CharZero F]
theorem staged_residual_a_length :
    staged_residual_a.length = 47 := by rfl
theorem staged_residual_b_length :
    staged_residual_b.length = 49 := by rfl

end NoFourMUBs.Step2.Critical.NonzeroClearing.PolynomialChecks.P2M4
