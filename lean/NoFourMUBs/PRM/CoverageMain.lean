import NoFourMUBs.PRM.CoverageSingular

/-!
# Strict-corner coverage (MC1) from the critical strip classification

`strictCornerCoverage_of_criticalStripGap : CriticalStripGap → StrictCornerCoverage`.

The paper proof of MC1 (`STRICT_CORNER_COVERAGE.md`, `PRM.md` §7.1–7.2) reduces here to the two results
bundled in `CriticalStripGap`, both proved elsewhere (assembled in `Final.lean`):

* `TopStripClassification` — I4, in the weakened interval form `17/3 < p < 29/5` for the exceptional value
  (`CoverageStripParts.topStripClassification`: the zero-`J` square-sum identity, and return K's two signed
  corner sums for nonzero `J`);
* `EndpointExclusions` — I5, `CRITICAL_P7_EXCLUSION.md` and `CRITICAL_EQUI_CORRELATION_EXCLUSION.md`
  (`CoverageEndpoints.endpointExclusions`).

Proved and used: the two Fourier-routing lemmas of §7.1 (`singularMinorRoute`, `geometricRowRoute`),
the Fourier critical locus I7 (`fourierCore_criticalLocus`), the Tao exclusion and the block
classification (`equivalent_F6_of_block`), the anchored sum rule and rational-gap count of the
ten-corner return, and `p⋆ ∈ (17/3, 29/5)`.  The critical corner reduction
(`criticalCornerReduction`, `R(E) = 4 (Im Ψ)²`) is the proved first step of I4.
-/

open Matrix Hadamard6

namespace NoFourMUBs.PRM

namespace Coverage

/-- **The remaining gap for MC1** (see the module docstring and the docstrings of the two
components). -/
def CriticalStripGap : Prop := TopStripClassification ∧ EndpointExclusions

theorem coverageInputs_of_criticalStripGap (h : CriticalStripGap) : CoverageInputs :=
  ⟨singularMinorRoute, geometricRowRoute, h.1, h.2⟩

end Coverage

/-- **MC1 from the critical strip classification and the two endpoint exclusions.** -/
theorem strictCornerCoverage_of_criticalStripGap (h : Coverage.CriticalStripGap) :
    StrictCornerCoverage :=
  strictCornerCoverage_of_inputs (Coverage.coverageInputs_of_criticalStripGap h)

end NoFourMUBs.PRM
