import KernelAtlas.Edge.Image
import KernelAtlas.Edge.Continuity
import KernelAtlas.Edge.Regular
import KernelAtlas.Edge.CoreRegular
import KernelAtlas.Edge.SideContinuity
import KernelAtlas.Edge.Forced
import KernelAtlas.Edge.Transfer
import KernelAtlas.Edge.Glue
import KernelAtlas.Edge.Frame
import KernelAtlas.Edge.Fold
import KernelAtlas.Edge.Angle
import KernelAtlas.Edge.Enclosure
import KernelAtlas.Edge.GlobalChart
import KernelAtlas.Edge.Graph
import KernelAtlas.Edge.Fourier.Sound
import KernelAtlas.Edge.Implicit

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

#print axioms NoFourMUBs.KernelAtlas.Edge.image_bound
#print axioms NoFourMUBs.KernelAtlas.Edge.continuous_tube_zero
#print axioms NoFourMUBs.KernelAtlas.Edge.hadamard_of_dense
#print axioms NoFourMUBs.KernelAtlas.Edge.edgeF_discriminant
#print axioms NoFourMUBs.KernelAtlas.Edge.equal_fourth
#print axioms NoFourMUBs.KernelAtlas.Edge.regular_completion
#print axioms NoFourMUBs.KernelAtlas.Edge.has_dRT
#print axioms NoFourMUBs.KernelAtlas.Edge.hasDerivAt_r4C
#print axioms NoFourMUBs.KernelAtlas.Edge.hasDerivAt_edgeR
#print axioms NoFourMUBs.KernelAtlas.Edge.strictMonoOn_edgeR
#print axioms NoFourMUBs.KernelAtlas.Edge.core_regular_sound
#print axioms NoFourMUBs.KernelAtlas.Edge.c1eBox_regular_sound
#print axioms NoFourMUBs.KernelAtlas.Edge.continuous_checked_side
#print axioms NoFourMUBs.KernelAtlas.Edge.forced_invertible
#print axioms NoFourMUBs.KernelAtlas.Edge.continuous_forcedD
#print axioms NoFourMUBs.KernelAtlas.Edge.predNear_sound
#print axioms NoFourMUBs.KernelAtlas.Edge.roots_agree
#print axioms NoFourMUBs.KernelAtlas.Edge.transferOK_sound
#print axioms NoFourMUBs.KernelAtlas.Edge.frameEta_normal
#print axioms NoFourMUBs.KernelAtlas.Edge.graph_radius
#print axioms NoFourMUBs.KernelAtlas.Edge.glue_finite
#print axioms NoFourMUBs.KernelAtlas.Edge.affine_regular_dense
#print axioms NoFourMUBs.KernelAtlas.Edge.rootCompletion_hadamard_of_dense
#print axioms NoFourMUBs.KernelAtlas.Edge.argRadius_lt_pi
#print axioms NoFourMUBs.KernelAtlas.Edge.continuous_phase_lift

#print axioms NoFourMUBs.KernelAtlas.Edge.labelOK_dense
#print axioms NoFourMUBs.KernelAtlas.Edge.BoxRoots.hadamard
#print axioms NoFourMUBs.KernelAtlas.Edge.BoxRoots.phase_models
#print axioms NoFourMUBs.KernelAtlas.Edge.BoxRoots.phase_continuous
#print axioms NoFourMUBs.KernelAtlas.Edge.chartOK_sound
#print axioms NoFourMUBs.KernelAtlas.Edge.chart_enclosure_sound
#print axioms NoFourMUBs.KernelAtlas.Edge.BoxChart.overlap
#print axioms NoFourMUBs.KernelAtlas.Edge.glue_boxCharts
#print axioms NoFourMUBs.KernelAtlas.Edge.edge_ball_cover
#print axioms NoFourMUBs.KernelAtlas.Edge.edge_sphere_cover
#print axioms NoFourMUBs.KernelAtlas.Edge.graphImageOK_sound
#print axioms NoFourMUBs.KernelAtlas.Edge.Fourier.normal_bound
#print axioms NoFourMUBs.KernelAtlas.Edge.Fourier.frame_checked
#print axioms NoFourMUBs.KernelAtlas.Edge.Fourier.normal_checked

#print axioms NoFourMUBs.KernelAtlas.Edge.hasStrictFDerivAt_selected_root
