import FourierPilotCircleTree005095
import FourierPilotCircleTree005096
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005094
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, true, true]
def state : State := ![77, 77, 127, 104, 104]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree005095.state FourierPilotCircleTree005096.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005095.covered FourierPilotCircleTree005096.covered
#print axioms covered
end FourierPilotCircleTree005094
