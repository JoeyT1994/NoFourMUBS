import NoFourMUBs.PRM.CoverageStripIdNonzeroAlg
import NoFourMUBs.PRM.CoverageStripIdNonzeroCheckH
import NoFourMUBs.PRM.CoverageStripIdNonzeroCheckMA
import NoFourMUBs.PRM.CoverageStripIdNonzeroCheckMB
import NoFourMUBs.PRM.CoverageStripIdNonzeroCheckC
import NoFourMUBs.PRM.CoverageStripIdNonzeroSum
import NoFourMUBs.PRM.CoverageStripIdNonzeroCheckQ

/-!
# Critical strip classification (I4): the nonzero-`J` square-sum identity (`NonzeroJAlgebra`)

`CRITICAL_STRIP_CLASSIFICATION.md` §3, (6)–(7) and `I4_ADDENDUM.md` §1: `nonzeroJ_of_checks` with the
kernel checks of the staged half data, the square sum and the quotient identity.
-/

namespace NoFourMUBs.PRM.Coverage

/-- **The nonzero-`J` square-sum identity.** -/
theorem nonzeroJAlgebra : NonzeroJAlgebra :=
  StripId.Nonzero.nonzeroJ_of_checks StripId.Nonzero.lamA_valid StripId.Nonzero.lamB_valid
    StripId.Nonzero.fldA_valid StripId.Nonzero.fldB_valid (fun _ hp => StripId.Nonzero.momA_valid hp)
    (fun _ hp => StripId.Nonzero.momB_valid hp) (fun _ hp => StripId.Nonzero.comb_valid hp)
    (fun _ _ h => StripId.Nonzero.sum_eq h)
    (fun ρ => Kronecker.Circ.eval_eq_zero_of_validD StripId.Nonzero.quot_valid ρ)

end NoFourMUBs.PRM.Coverage
