import FourierPilotCircleTree002931
import FourierPilotCircleTree002964
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002930
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![10, 13, 8, 15, 8]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree002931.state FourierPilotCircleTree002964.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002931.covered FourierPilotCircleTree002964.covered
#print axioms covered
end FourierPilotCircleTree002930
