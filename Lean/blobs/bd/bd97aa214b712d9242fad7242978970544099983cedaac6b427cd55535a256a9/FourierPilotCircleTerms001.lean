import FourierPilotCircleImages
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTerms001
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
theorem all_terms : ∀ h : Fin heapBound, checkTermOption T R (parameters h) (midpointRe 1) (midpointIm 1) (coefficients 1) (images h) (centres 1 h) (termBoxes 1 h) = true := by decide +kernel
#print axioms all_terms
end FourierPilotCircleTerms001
