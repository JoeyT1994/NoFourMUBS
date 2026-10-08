import FourierPilotCircleTree005255
import FourierPilotCircleTree005256
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005254
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, true]
def state : State := ![20, 14, 13, 8, 22]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree005255.state FourierPilotCircleTree005256.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005255.covered FourierPilotCircleTree005256.covered
#print axioms covered
end FourierPilotCircleTree005254
