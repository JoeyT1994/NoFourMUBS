import FourierPilotCircleTree000824
import FourierPilotCircleTree000825
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000823
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, false]
def state : State := ![22, 11, 10, 13, 15]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree000824.state FourierPilotCircleTree000825.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000824.covered FourierPilotCircleTree000825.covered
#print axioms covered
end FourierPilotCircleTree000823
