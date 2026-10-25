import NoFourMUBs.Final
import NoFourMUBs.SeedAtlas.EdgeXAtlas

/-!
# The main theorem from the seed atlas with edge balls (`proof/seed_atlas/SPEC.md` §10)

`EdgeXFinal.no_four_mubs_seed (C : SeedAtlas.EdgeX.EdgeAtlasCertificate) : ¬ FourMUBs`: `FinalSeed.no_four_mubs_seed` with
edge balls in place of `F6`'s full-matrix record (Tao's record stays).  The route is unchanged: `W` is clopen
(`EdgeAtlasCertificate.clopen`) and contains `F6` (an edge ball), so `Step2.coverage_of_matched_density` covers every
non-Tao class; Tao's orbit is excluded by its record and every point of `W` by Stage C or X.
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
