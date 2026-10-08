import FourierPilotCircleTree002387
import FourierPilotCircleTree002388
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002386
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, false]
def state : State := ![7, 5, 7, 5, 4]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree002387.state FourierPilotCircleTree002388.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002387.covered FourierPilotCircleTree002388.covered
#print axioms covered
end FourierPilotCircleTree002386
