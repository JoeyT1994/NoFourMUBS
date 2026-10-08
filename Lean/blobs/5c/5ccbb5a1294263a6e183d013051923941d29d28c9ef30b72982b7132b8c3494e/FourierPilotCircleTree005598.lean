import FourierPilotCircleTree005599
import FourierPilotCircleTree005600
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005598
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, true]
def state : State := ![77, 77, 64, 104, 104]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree005599.state FourierPilotCircleTree005600.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005599.covered FourierPilotCircleTree005600.covered
#print axioms covered
end FourierPilotCircleTree005598
