import FourierPilotCircleTree005620
import FourierPilotCircleTree005627
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005619
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, true]
def state : State := ![5, 5, 2, 3, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree005620.state FourierPilotCircleTree005627.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005620.covered FourierPilotCircleTree005627.covered
#print axioms covered
end FourierPilotCircleTree005619
