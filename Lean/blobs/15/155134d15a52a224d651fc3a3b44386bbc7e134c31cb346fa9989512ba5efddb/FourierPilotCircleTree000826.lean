import FourierPilotCircleTree000827
import FourierPilotCircleTree000860
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000826
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, false]
def state : State := ![22, 23, 20, 13, 15]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree000827.state FourierPilotCircleTree000860.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000827.covered FourierPilotCircleTree000860.covered
#print axioms covered
end FourierPilotCircleTree000826
