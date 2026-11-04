import NoFourMUBs

/-!
# Axiom audit of the library root

`check_axioms.py` runs this file and requires every theorem below to use only `propext`, `Classical.choice` and
`Quot.sound`, and the number of audited theorems to equal the number of `#print axioms` lines.  It covers the
modules imported by `NoFourMUBs.lean`: the skeleton, Steps 1, 3 and 4, matched uniqueness, the connectedness of
the strict seeds, the Fourier anchor, the Fourier classes (`fourierClasses_subset`), coverage, and the conditional
form `no_four_mubs_main` of the main theorem.  `AxiomsComplete.lean` audits L1 and `Final`.
-/
#print axioms NoFourMUBs.no_four_mubs
#print axioms NoFourMUBs.exists_quartetEdge_of_fourMUBs
#print axioms NoFourMUBs.quartetEdge_of_equivalent
#print axioms NoFourMUBs.inGamma_preserves
#print axioms NoFourMUBs.transfer
#print axioms NoFourMUBs.outNorm_rem_le
#print axioms NoFourMUBs.normal_bound_root
#print axioms NoFourMUBs.isolation
#print axioms NoFourMUBs.StageC.not_quartetEdge
#print axioms NoFourMUBs.StageC.cover_of_leaves
#print axioms NoFourMUBs.StageC.bin_bounds
#print axioms NoFourMUBs.StageC.direct_test
#print axioms NoFourMUBs.StageC.linear_test
#print axioms NoFourMUBs.StageC.scalar_test
#print axioms NoFourMUBs.StageC.edge_O
#print axioms NoFourMUBs.StageC.edge_U
#print axioms NoFourMUBs.StageC.joint_O
#print axioms NoFourMUBs.StageC.joint_U
#print axioms NoFourMUBs.StageC.StageCCert.excludes
#print axioms NoFourMUBs.RecordCert.excludes
#print axioms NoFourMUBs.no_four_mubs_of_atlas
#print axioms NoFourMUBs.recordClopen_of_atlas
#print axioms NoFourMUBs.Step1Saddle.calR_no_pos_localMax
#print axioms NoFourMUBs.Step1Geo.both_boundary
#print axioms NoFourMUBs.no_four_mubs_main
#print axioms NoFourMUBs.Step1Geo.maximumCensus
#print axioms NoFourMUBs.Step2.matchedUniqueness
#print axioms NoFourMUBs.Step2.matched_fourier
#print axioms NoFourMUBs.Step2.isConnected_strict
#print axioms NoFourMUBs.Step2.fourierClasses_subset
#print axioms NoFourMUBs.Step2.coverage_of_matched_density
