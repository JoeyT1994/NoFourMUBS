import NoFourMUBs.Final
import NoFourMUBs.FourierVanishing.Main

/-!
# Axiom audit of L1, strict-corner coverage and `Final`

Run by `check_axioms.py --full` after building `NoFourMUBs.Complete`, `NoFourMUBs.Final` and
`NoFourMUBs.FourierVanishing.Main`, which the library root does not import.  Every theorem below must use only
`propext`, `Classical.choice` and `Quot.sound`; the last but one is the main theorem `Final.no_four_mubs`.
-/
#print axioms NoFourMUBs.L1.exists_side_h
#print axioms NoFourMUBs.L1.exists_side_v
#print axioms NoFourMUBs.L1.matchedExistence
#print axioms NoFourMUBs.no_four_mubs_of_density
#print axioms NoFourMUBs.PRM.nonmatched_tao
#print axioms NoFourMUBs.PRM.densityReach
#print axioms NoFourMUBs.no_four_mubs_of_coverage
#print axioms NoFourMUBs.PRM.Coverage.zeroJAlgebra
#print axioms NoFourMUBs.PRM.Coverage.noPole
#print axioms NoFourMUBs.PRM.Coverage.nonzeroJ_signed
#print axioms NoFourMUBs.PRM.Coverage.topStripClassification
#print axioms NoFourMUBs.PRM.Coverage.endpointExclusions
#print axioms NoFourMUBs.PRM.Coverage.Quartic.poleClassification
#print axioms NoFourMUBs.PRM.strictCornerCoverage
#print axioms NoFourMUBs.Final.no_four_mubs
#print axioms NoFourMUBs.FourierVanishing.fourierVanishing
