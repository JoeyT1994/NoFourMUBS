import NoFourMUBs.PRM.CoverageSingular

/-!
# Strict-corner coverage (MC1, `PROOF.md` Theorem 2.5) from the critical strip classification

`strictCornerCoverage_of_classification : TopStripClassification → StrictCornerCoverage`.

The paper proof of MC1 (`STRICT_CORNER_COVERAGE.md`, `PRM.md` §7.1–7.2) reduces here to the critical
strip classification I4, `TopStripClassification`, in the window form `5.722 < p < 5.723` for the
exceptional value (`CoverageStripParts.topStripClassification`: zero `J` and return K's two signed
corner sums for nonzero `J`), proved elsewhere and assembled in `Final.lean`.

Proved and used: the two Fourier-routing lemmas of §7.1 (`singularMinorRoute`, `geometricRowRoute`),
the Fourier critical locus I7 (`fourierCore_criticalLocus`), the Tao exclusion and the block
classification (`equivalent_F6_of_block`), and the ten-corner count of return S
(`CoverageTen.anchored_count`), which also excludes the two rational endpoints the classification
leaves.  The critical corner reduction (`criticalCornerReduction`, `R(E) = 4 (Im Ψ)²`) is the proved
first step of I4.
-/

open Matrix Hadamard6

namespace NoFourMUBs.PRM

namespace Coverage

theorem coverageInputs_of_classification (h : TopStripClassification) : CoverageInputs :=
  ⟨singularMinorRoute, geometricRowRoute, h⟩

end Coverage

/-- **MC1 from the critical strip classification.** -/
theorem strictCornerCoverage_of_classification (h : Coverage.TopStripClassification) :
    StrictCornerCoverage :=
  strictCornerCoverage_of_inputs (Coverage.coverageInputs_of_classification h)

end NoFourMUBs.PRM
