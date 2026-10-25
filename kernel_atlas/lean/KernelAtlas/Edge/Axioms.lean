import KernelAtlas.Edge.ProductionSample.Check0
import KernelAtlas.Edge.ProductionSample.Transfer0.SourceCheck0
import KernelAtlas.Edge.ProductionSample.Check1
import KernelAtlas.Edge.ProductionSample.Transfer1.SourceCheck0
import KernelAtlas.Edge.ProductionSample.Check2
import KernelAtlas.Edge.ProductionSample.Transfer2.SourceCheck0
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
import KernelAtlas.Edge.CompletionModels
import KernelAtlas.Edge.Slope
import KernelAtlas.Edge.RationalModels
import KernelAtlas.Edge.GlobalOpen
import KernelAtlas.Edge.CoverChecks
import KernelAtlas.Edge.Baseline.FullCheck
import KernelAtlas.Edge.Baseline.CoverCheck
import KernelAtlas.Edge.Source
import KernelAtlas.Edge.Final
import KernelAtlas.Edge.SmallBall.Cert
import KernelAtlas.Edge.SourceFixture.SourceCheck0

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
#print axioms NoFourMUBs.KernelAtlas.Edge.sideE_jacobian_invertible
#print axioms NoFourMUBs.KernelAtlas.Edge.CheckedSide.hasStrictFDerivAt_rootDifferential
#print axioms NoFourMUBs.KernelAtlas.Edge.edgeParam_partial_parameter
#print axioms NoFourMUBs.KernelAtlas.Edge.has_edgeJT
#print axioms NoFourMUBs.KernelAtlas.Edge.has_parameterJT
#print axioms NoFourMUBs.KernelAtlas.Edge.linear_residual_error
#print axioms NoFourMUBs.KernelAtlas.Edge.solveOK_sound
#print axioms NoFourMUBs.KernelAtlas.Edge.rootDiffOK_sound
#print axioms NoFourMUBs.KernelAtlas.Edge.forced_derivative_equation
#print axioms NoFourMUBs.KernelAtlas.Edge.hasDerivAt_phase_lift
#print axioms NoFourMUBs.KernelAtlas.Edge.forcedDerivativeT_sound
#print axioms NoFourMUBs.KernelAtlas.Edge.has_phaseDerivativeT
#print axioms NoFourMUBs.KernelAtlas.Edge.slopeOK_open
#print axioms NoFourMUBs.KernelAtlas.Edge.differentiableAt_phase_lift
#print axioms NoFourMUBs.KernelAtlas.Edge.has_rationalT

#print axioms NoFourMUBs.KernelAtlas.Edge.BoxChart.differentiableAt_Q
#print axioms NoFourMUBs.KernelAtlas.Edge.columnQT_sound
#print axioms NoFourMUBs.KernelAtlas.Edge.BoxChart.jacQ_models
#print axioms NoFourMUBs.KernelAtlas.Edge.has_etaT
#print axioms NoFourMUBs.KernelAtlas.Edge.frameEta_hor
#print axioms NoFourMUBs.KernelAtlas.Edge.BoxChart.etaChart_hasDerivAt
#print axioms NoFourMUBs.KernelAtlas.Edge.BoxChart.etaJac_models
#print axioms NoFourMUBs.KernelAtlas.Edge.BoxChart.etaChart_open
#print axioms NoFourMUBs.KernelAtlas.Edge.open_of_local_chart
#print axioms NoFourMUBs.KernelAtlas.Edge.overlapsOK_sound
#print axioms NoFourMUBs.KernelAtlas.Edge.interiorMatch_sound
#print axioms NoFourMUBs.KernelAtlas.Edge.fullBox_sound
#print axioms NoFourMUBs.KernelAtlas.Edge.Baseline.box0_slope
#print axioms NoFourMUBs.KernelAtlas.Edge.Baseline.full0_checked
#print axioms NoFourMUBs.KernelAtlas.Edge.Baseline.box0_open
#print axioms NoFourMUBs.KernelAtlas.Edge.Baseline.closed_ball_covered

#print axioms NoFourMUBs.KernelAtlas.Edge.enclosureFrame_sound
#print axioms NoFourMUBs.KernelAtlas.Edge.exists_ballChart
#print axioms NoFourMUBs.KernelAtlas.Edge.assemble
#print axioms NoFourMUBs.KernelAtlas.Edge.assemble_Q
#print axioms NoFourMUBs.KernelAtlas.Edge.coverTable_sound
#print axioms NoFourMUBs.KernelAtlas.Edge.transfer_corner
#print axioms NoFourMUBs.KernelAtlas.Edge.edgeBoundary_of
#print axioms NoFourMUBs.KernelAtlas.Edge.sourceLinkOK_eq
#print axioms NoFourMUBs.KernelAtlas.Edge.source_models
#print axioms NoFourMUBs.KernelAtlas.Edge.sourceBoundary_of
#print axioms NoFourMUBs.KernelAtlas.Edge.SmallBall.cert
#print axioms NoFourMUBs.KernelAtlas.Edge.SourceFixture.S0.checked

#print axioms NoFourMUBs.KernelAtlas.Edge.singleEdgeAtlas
#print axioms NoFourMUBs.KernelAtlas.Edge.no_four_mubs_of_edge

#print axioms NoFourMUBs.KernelAtlas.Edge.ProductionSample.B0.checked
#print axioms NoFourMUBs.KernelAtlas.Edge.ProductionSample.Transfer0.S0.checked
#print axioms NoFourMUBs.KernelAtlas.Edge.ProductionSample.B1.checked
#print axioms NoFourMUBs.KernelAtlas.Edge.ProductionSample.Transfer1.S0.checked
#print axioms NoFourMUBs.KernelAtlas.Edge.ProductionSample.B2.checked
#print axioms NoFourMUBs.KernelAtlas.Edge.ProductionSample.Transfer2.S0.checked
