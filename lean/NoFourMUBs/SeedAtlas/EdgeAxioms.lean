import NoFourMUBs.SeedAtlas.EdgeFinal
import NoFourMUBs.SeedAtlas.Method.SlopeOpen

/-! Axiom audit of the edge-ball route: each theorem should depend only on `propext`, `Classical.choice` and
`Quot.sound`. -/

#print axioms NoFourMUBs.EdgeFinal.no_four_mubs_seed
#print axioms NoFourMUBs.SeedAtlas.graph_unique
#print axioms NoFourMUBs.SeedAtlas.isOpen_edgeInterior
#print axioms NoFourMUBs.SeedAtlas.EdgeBallCert.excludes
#print axioms NoFourMUBs.SeedAtlas.EdgeBallCert.isCompact_ball
#print axioms NoFourMUBs.SeedAtlas.edgeInterior_of_edgeInQ
#print axioms NoFourMUBs.SeedAtlas.EdgeBallCert.equivalent_of_eta
#print axioms NoFourMUBs.SeedAtlas.EdgeAtlasCertificate.clopen
#print axioms NoFourMUBs.SeedAtlas.covered_iff_interiorTargetE
#print axioms NoFourMUBs.SeedAtlas.hopen_of_strictDeriv
#print axioms NoFourMUBs.SeedAtlas.Method.image_closedBall_mem_nhds_of_slope
