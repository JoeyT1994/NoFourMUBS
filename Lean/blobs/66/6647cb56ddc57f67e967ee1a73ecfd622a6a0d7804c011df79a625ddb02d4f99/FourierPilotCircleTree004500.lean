import FourierPilotCircleTree004501
import FourierPilotCircleTree004506
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004500
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, true]
def state : State := ![93, 98, 32, 107, 42]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree004501.state FourierPilotCircleTree004506.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004501.covered FourierPilotCircleTree004506.covered
#print axioms covered
end FourierPilotCircleTree004500
