import CentreSymmetry
open Mub6.Numerical.ClusterTube48
set_option pp.all true in
#print rationalOverlapRe
#print instDecidableRationalOrthogonalPredicate
#print instDecidableRationalUnbiasedPredicate
#eval centreProbability (0 : Fin 48) 0
example : (centreProbability (0 : Fin 48) 0 = 1) := by decide
example : (4*((5:ℚ)/27)^2*(1-((5:ℚ)/27)^2) < 1) := by decide
