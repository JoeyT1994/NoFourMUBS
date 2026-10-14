import NoFourMUBs.MainTheorem
import NoFourMUBs.L1.Existence
import NoFourMUBs.PRM.Reach

/-!
# The main theorem with matched existence proved

`no_four_mubs_main` with its hypothesis `MatchedExistence` (L1) discharged by `L1.matchedExistence`, and density (D)
derived from strict-corner coverage (MC1) by return G's Theorem A (`PRM.densityReach`).
This module is not imported by the library root, since its kernel checks (`L1/SideCheck*`,
`L1/FlatCheck*`) take about an hour to build: `lake build NoFourMUBs.Complete`.
-/

namespace NoFourMUBs

/-- **No four MUBs in `ℂ⁶`**, from the finite certificate and density (D). -/
theorem no_four_mubs_of_density (C : AtlasCertificate) (hD : Step2.MatchedDensityReach) : ¬ FourMUBs :=
  no_four_mubs_main C L1.matchedExistence hD

/-- **No four MUBs in `ℂ⁶`**, from the finite certificate and strict-corner coverage (MC1). -/
theorem no_four_mubs_of_coverage (C : AtlasCertificate) (hcov : PRM.StrictCornerCoverage) : ¬ FourMUBs :=
  no_four_mubs_of_density C (PRM.densityReach hcov)

end NoFourMUBs
