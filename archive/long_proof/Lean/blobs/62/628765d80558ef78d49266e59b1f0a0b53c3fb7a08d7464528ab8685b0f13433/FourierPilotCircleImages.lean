import FourierPilotCircleData
import CircleArcTables
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleImages
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
theorem all_images : ∀ h : Fin heapBound, checkImageOption T R (parameters h) (images h) = true := by decide +kernel
theorem all_coefficients : ∀ r k : Fin 6, coefficients (coefficientIndex r k) = some (boxConj (carrier r k)) := by decide +kernel
#print axioms all_images
#print axioms all_coefficients
end FourierPilotCircleImages
