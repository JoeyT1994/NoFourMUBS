import FourierPilotCircleTree000495
import FourierPilotCircleTree000496
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000494
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, false]
def state : State := ![7, 7, 7, 5, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree000495.state FourierPilotCircleTree000496.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000495.covered FourierPilotCircleTree000496.covered
#print axioms covered
end FourierPilotCircleTree000494
