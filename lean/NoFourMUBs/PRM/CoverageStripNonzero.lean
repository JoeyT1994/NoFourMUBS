import NoFourMUBs.PRM.CoverageStripScalar

/-!
# Critical strip classification (I4): complementary corners and the endpoint data

The conclusion of the nonzero-`J` half of `TopStripClassification` involves only `p`, `X, Y, Z` and `|J|`,
which agree on complementary corners; so the stratum `J < 0` reduces to `J > 0`
(`CoverageSignedNonzero.nonzeroJ_signed`).  The nonzero-`J` stratum itself is proved by return K's two
signed corner sums (`CoverageSignedNonzero`).
-/

open Matrix Hadamard6 ComplexConjugate

noncomputable section

namespace NoFourMUBs.PRM.Coverage

theorem equiEndpoint_compl {H : Mat6} (hH : Hadamard6.IsHadamard H) (l : Fin 20) :
    EquiEndpoint (triBlock H 0 (19 - l)) ↔ EquiEndpoint (triBlock H 0 l) := by
  simp only [EquiEndpoint, blockX_compl hH, blockY_compl hH, blockZ_compl hH, blockJ_compl hH, abs_neg]

theorem p7Endpoint_compl {H : Mat6} (hH : Hadamard6.IsHadamard H) (l : Fin 20) :
    P7Endpoint (triBlock H 0 (19 - l)) ↔ P7Endpoint (triBlock H 0 l) := by
  simp only [P7Endpoint, blockX_compl hH, blockY_compl hH, blockZ_compl hH, blockJ_compl hH, abs_neg]

end NoFourMUBs.PRM.Coverage
