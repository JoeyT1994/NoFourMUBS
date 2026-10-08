import FourierPilotCircleTree005302
import FourierPilotCircleTree005313
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005301
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, true]
def state : State := ![27, 9, 10, 15, 25]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree005302.state FourierPilotCircleTree005313.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005302.covered FourierPilotCircleTree005313.covered
#print axioms covered
end FourierPilotCircleTree005301
