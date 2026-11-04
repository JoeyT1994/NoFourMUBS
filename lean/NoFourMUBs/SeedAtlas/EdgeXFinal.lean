import NoFourMUBs.Final
import NoFourMUBs.SeedAtlas.EdgeXAtlas

/-!
# The main theorem from the seed atlas with edge balls (`proof/seed_atlas/SPEC.md` §10)

`EdgeXFinal.no_four_mubs_seed (C : SeedAtlas.EdgeX.EdgeAtlasCertificate) : ¬ FourMUBs`.  The covered set `W` is
clopen (`EdgeAtlasCertificate.clopen`) and contains `F6` (the X-ball), so `Step2.coverage_of_matched_density` covers
every non-Tao class.  Tao's orbit is excluded by its record, the seed balls by Stage C and the X-ball by the exclusion
near `F6`.
-/

namespace NoFourMUBs

open SeedAtlas EdgeX

/-- **There are no four mutually unbiased bases in `ℂ⁶`**, given the seed atlas certificate with edge balls. -/
theorem EdgeXFinal.no_four_mubs_seed (C : EdgeAtlasCertificate) : ¬ FourMUBs :=
  no_four_mubs ⟨C.taoExcluded,
    Step2.coverage_of_matched_density C.Ball L1.matchedExistence Step2.matchedUniqueness
      (PRM.densityReach PRM.strictCornerCoverage) C.clopen C.fourierAnchor,
    C.excluded⟩

end NoFourMUBs
