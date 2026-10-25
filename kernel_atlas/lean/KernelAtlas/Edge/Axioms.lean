import KernelAtlas.Edge.C1eSide

/-!
# Axiom audit for the edge kernel checks

Every theorem below must depend only on `propext`, `Classical.choice`, and `Quot.sound`.
Run with `LEAN_NUM_THREADS=8 lake build KernelAtlas.Edge.Axioms` from `lean/`.
-/

#print axioms NoFourMUBs.KernelAtlas.Edge.hasDerivAt_edgeF
#print axioms NoFourMUBs.KernelAtlas.Edge.has_aT
#print axioms NoFourMUBs.KernelAtlas.Edge.has_yT
#print axioms NoFourMUBs.KernelAtlas.Edge.has_FE
#print axioms NoFourMUBs.KernelAtlas.Edge.has_dpsiT
#print axioms NoFourMUBs.KernelAtlas.Edge.jGI_sound
#print axioms NoFourMUBs.KernelAtlas.Edge.qRowsH_sound
#print axioms NoFourMUBs.KernelAtlas.Edge.sideE_sound
