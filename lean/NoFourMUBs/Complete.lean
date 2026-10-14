import NoFourMUBs.MainTheorem
import NoFourMUBs.L1.Existence

/-!
# The main theorem with matched existence proved

`no_four_mubs_main` with its hypothesis `MatchedExistence` (L1) discharged by `L1.matchedExistence`.
This module is not imported by the library root, since its kernel checks (`L1/SideCheck*`,
`L1/FlatCheck*`) take about an hour to build: `lake build NoFourMUBs.Complete`.
-/

namespace NoFourMUBs

/-- **No four MUBs in `ℂ⁶`**, from the finite certificate and density (D). -/
theorem no_four_mubs_of_density (C : AtlasCertificate) (hD : Step2.MatchedDensityReach) : ¬ FourMUBs :=
  no_four_mubs_main C L1.matchedExistence hD

end NoFourMUBs
