import NoFourMUBs.PRM.CoverageStripIdZero
import NoFourMUBs.PRM.CoverageStripIdNonzero

/-!
# Critical strip classification (I4): the two square-sum identities

* `NoFourMUBs.PRM.Coverage.zeroJAlgebra : ZeroJAlgebra` (`CoverageStripIdZero`);
* `NoFourMUBs.PRM.Coverage.nonzeroJAlgebra : NonzeroJAlgebra` (`CoverageStripIdNonzero`).

Both are reduced (row scaling `s = t = 1`, `CoverageStripIdFormal`) to identities of rational functions in
`X = |s|², Y = |t|²` and the parameter (`z` or `k`), with the quadratic element `ζ = r s/t`
(`NoFourMUBs.Identity.Frac.QF`), and checked by the kernel against generated data
(`lean/generators/stripid/`); the modulus relation enters through one explicit quotient each.
-/

namespace NoFourMUBs.PRM.Coverage

example : ZeroJAlgebra := zeroJAlgebra
example : NonzeroJAlgebra := nonzeroJAlgebra

end NoFourMUBs.PRM.Coverage
