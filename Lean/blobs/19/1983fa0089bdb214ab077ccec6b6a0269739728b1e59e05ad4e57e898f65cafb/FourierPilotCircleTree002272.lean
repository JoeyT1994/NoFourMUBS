import FourierPilotCircleTree002273
import FourierPilotCircleTree002338
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002272
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, false]
def state : State := ![2, 3, 2, 2, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree002273.state FourierPilotCircleTree002338.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002273.covered FourierPilotCircleTree002338.covered
#print axioms covered
end FourierPilotCircleTree002272
