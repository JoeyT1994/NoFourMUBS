import FourierPilotCircleTree005596
import FourierPilotCircleTree005597
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005595
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, true]
def state : State := ![77, 38, 32, 104, 104]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree005596.state FourierPilotCircleTree005597.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005596.covered FourierPilotCircleTree005597.covered
#print axioms covered
end FourierPilotCircleTree005595
