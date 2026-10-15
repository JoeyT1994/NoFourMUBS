import NoFourMUBs.PRM.CoverageSingular

/-!
# Strict-corner coverage (MC1) from the critical strip classification

`strictCornerCoverage_of_criticalStripGap : CriticalStripGap → StrictCornerCoverage`.

Everything in the paper proof of MC1 (`STRICT_CORNER_COVERAGE.md`, `PRM.md` §7.1–7.2) is now in Lean
except the two results bundled in `CriticalStripGap`:

* `TopStripClassification` — I4, `CRITICAL_STRIP_CLASSIFICATION.md` (whole-strip square-sum
  identities, the Sturm/Bernstein sign certificate for the quartic `Q(k, K)`, the pole strata), in the
  weakened interval form `17/3 < p < 29/5` for the exceptional value;
* `EndpointExclusions` — I5, `CRITICAL_P7_EXCLUSION.md` and `CRITICAL_EQUI_CORRELATION_EXCLUSION.md`.

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
