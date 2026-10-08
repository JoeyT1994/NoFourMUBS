import CentreSymmetry
open Mub6.Numerical.ClusterTube48
set_option maxRecDepth 16384
set_option maxHeartbeats 3200000
example : (4*((5:ℚ)/27)^2*(1-((5:ℚ)/27)^2) < 1) := by decide +kernel
example : (centreProbability (0 : Fin 48) 0 = 1) := by decide +kernel
