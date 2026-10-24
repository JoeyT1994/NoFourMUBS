import NoFourMUBs.Final
import NoFourMUBs.SeedAtlas.Atlas

/-!
# The main theorem from the seed atlas

`FinalSeed.no_four_mubs_seed (C : SeedAtlas.SeedAtlasCertificate) : ¬ FourMUBs`, the seed atlas version of
`Final.no_four_mubs` (`proof/seed_atlas/SPEC.md` §9).  Its only input is the seed atlas certificate: seed balls in the
four seed phases with the enclosure C1 and Stage C, their boundary transfers T0, T1, T2, full-matrix records (F6's
and Tao's) with boundary transfers into records or seed balls (T1′).

The route is that of `Final.no_four_mubs`:
* the covered classes `W` are clopen (`SeedAtlasCertificate.clopen`: compact images, the open-map lemma and the
  transfers) and contain `F6` (its record);
* `Step2.coverage_of_matched_density`: the strict seeds whose matched class is in `W` form a nonempty open and closed
  set, hence all of them (`Step2.isConnected_strict`); the Fourier classes are in `W` (`Step2.fourierClasses_subset`);
  every other non-Tao class has a matched strict corner, by strict-corner coverage (`PRM.strictCornerCoverage`) and
  the weaker classification (`PRM.nonmatched_tao_or_fourier`, through `PRM.densityReach`);
* Tao's orbit is excluded by its record, and every point of `W` by Stage C (`SeedBallCert.excludes`,
  `RecordCert.excludes`).
-/

namespace NoFourMUBs

open SeedAtlas

/-- **There are no four mutually unbiased bases in `ℂ⁶`**, given the seed atlas certificate. -/
theorem FinalSeed.no_four_mubs_seed (C : SeedAtlasCertificate) : ¬ FourMUBs :=
  no_four_mubs ⟨C.taoExcluded,
    Step2.coverage_of_matched_density C.Ball L1.matchedExistence Step2.matchedUniqueness
      (PRM.densityReach PRM.strictCornerCoverage) C.clopen C.fourierAnchor,
    C.excluded⟩

end NoFourMUBs
