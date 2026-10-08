import FourierPilotCircleTree005657
import FourierPilotCircleTree005658
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005656
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, true]
def state : State := ![6, 6, 7, 5, 5]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree005657.state FourierPilotCircleTree005658.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005657.covered FourierPilotCircleTree005658.covered
#print axioms covered
end FourierPilotCircleTree005656
