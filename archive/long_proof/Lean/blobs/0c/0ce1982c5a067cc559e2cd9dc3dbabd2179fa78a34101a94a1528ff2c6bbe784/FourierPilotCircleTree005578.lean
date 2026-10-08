import FourierPilotCircleTree005579
import FourierPilotCircleTree005612
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005578
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, true]
def state : State := ![9, 9, 4, 13, 13]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree005579.state FourierPilotCircleTree005612.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005579.covered FourierPilotCircleTree005612.covered
#print axioms covered
end FourierPilotCircleTree005578
