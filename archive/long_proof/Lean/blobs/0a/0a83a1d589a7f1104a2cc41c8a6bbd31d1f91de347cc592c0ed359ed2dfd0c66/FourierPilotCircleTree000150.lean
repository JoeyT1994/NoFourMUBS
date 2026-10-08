import FourierPilotCircleTree000151
import FourierPilotCircleTree000156
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000150
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, false]
def state : State := ![3, 2, 3, 2, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree000151.state FourierPilotCircleTree000156.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000151.covered FourierPilotCircleTree000156.covered
#print axioms covered
end FourierPilotCircleTree000150
