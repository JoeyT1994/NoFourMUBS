import FourierPilotCircleTree005195
import FourierPilotCircleTree005228
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005194
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, true]
def state : State := ![4, 3, 2, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree005195.state FourierPilotCircleTree005228.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005195.covered FourierPilotCircleTree005228.covered
#print axioms covered
end FourierPilotCircleTree005194
