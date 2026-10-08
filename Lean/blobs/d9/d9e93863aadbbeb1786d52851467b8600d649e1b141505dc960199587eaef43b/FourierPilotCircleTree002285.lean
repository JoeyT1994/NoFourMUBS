import FourierPilotCircleTree002286
import FourierPilotCircleTree002321
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002285
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, false]
def state : State := ![4, 13, 10, 10, 10]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree002286.state FourierPilotCircleTree002321.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002286.covered FourierPilotCircleTree002321.covered
#print axioms covered
end FourierPilotCircleTree002285
