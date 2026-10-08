import FourierPilotCircleImages
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTerms002
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
theorem all_terms : ∀ h : Fin heapBound, checkTermOption T R (parameters h) (midpointRe 2) (midpointIm 2) (coefficients 2) (images h) (centres 2 h) (termBoxes 2 h) = true := by decide +kernel
#print axioms all_terms
end FourierPilotCircleTerms002
