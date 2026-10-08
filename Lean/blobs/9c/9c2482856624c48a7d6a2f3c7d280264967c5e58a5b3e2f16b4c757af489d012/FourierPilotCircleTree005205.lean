import FourierPilotCircleTree005206
import FourierPilotCircleTree005221
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005205
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, true]
def state : State := ![9, 12, 8, 13, 8]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree005206.state FourierPilotCircleTree005221.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005206.covered FourierPilotCircleTree005221.covered
#print axioms covered
end FourierPilotCircleTree005205
