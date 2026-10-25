import NoFourMUBs.FinalSeed
import NoFourMUBs.SeedAtlas.Method.Completion
import NoFourMUBs.SeedAtlas.Method.Krawczyk
import NoFourMUBs.SeedAtlas.Method.Neumann
import NoFourMUBs.SeedAtlas.Method.Box

/-! Axiom audit of the seed atlas route: each theorem should depend only on `propext`, `Classical.choice` and
`Quot.sound`. -/

#print axioms NoFourMUBs.FinalSeed.no_four_mubs_seed
#print axioms NoFourMUBs.SeedAtlas.SeedAtlasCertificate.clopen
#print axioms NoFourMUBs.SeedAtlas.SeedBallCert.excludes
#print axioms NoFourMUBs.SeedAtlas.isOpen_matchedImage
#print axioms NoFourMUBs.SeedAtlas.isOpen_classImage
#print axioms NoFourMUBs.SeedAtlas.classImage_mem_nhds
#print axioms NoFourMUBs.SeedAtlas.matchedO_unique
#print axioms NoFourMUBs.SeedAtlas.matchedO_of_signs
#print axioms NoFourMUBs.SeedAtlas.matchedO_of_corner
#print axioms NoFourMUBs.SeedAtlas.leadingBlock_cornerMat_phaseMat
#print axioms NoFourMUBs.SeedAtlas.transfer_t0
#print axioms NoFourMUBs.SeedAtlas.transfer_t1
#print axioms NoFourMUBs.SeedAtlas.transfer_t2
#print axioms NoFourMUBs.SeedAtlas.transfer_t1'
#print axioms NoFourMUBs.SeedAtlas.covered_iff_interiorTarget
#print axioms NoFourMUBs.SeedAtlas.isCompact_seedBall
#print axioms NoFourMUBs.SeedAtlas.RecordCert.decompN
#print axioms NoFourMUBs.SeedAtlas.psi_rightBlock_cornerMat
#print axioms NoFourMUBs.SeedAtlas.psi_lowerBlock_cornerMat
-- the C1 method (stretch): not used by `no_four_mubs_seed`, which takes C1 as a hypothesis
#print axioms NoFourMUBs.SeedAtlas.Method.norm_exp_I_taylor2_le
#print axioms NoFourMUBs.SeedAtlas.Method.exists_arg_one_add
#print axioms NoFourMUBs.SeedAtlas.Method.TM.Encl.mul
#print axioms NoFourMUBs.SeedAtlas.Method.TM.Encl.expI
#print axioms NoFourMUBs.SeedAtlas.Method.TM.Encl.arg
#print axioms NoFourMUBs.SeedAtlas.Method.TM.Encl.perturb
#print axioms NoFourMUBs.SeedAtlas.Method.krawczyk
#print axioms NoFourMUBs.SeedAtlas.Method.krawczyk_param
#print axioms NoFourMUBs.SeedAtlas.Method.neumann
#print axioms NoFourMUBs.SeedAtlas.Method.norm_correction_le
#print axioms NoFourMUBs.SeedAtlas.Method.box_bound
#print axioms NoFourMUBs.SeedAtlas.Method.matchedO_of_certified_sides
-- the horizontal gauge (SPEC §11)
#print axioms NoFourMUBs.SeedAtlas.RepO.equivalent_of_matched
#print axioms NoFourMUBs.SeedAtlas.RepO.hor
#print axioms NoFourMUBs.SeedAtlas.SeedBallCert.enclosure
