import FourierPilotCircleTree004195
import FourierPilotCircleTree004204
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004194
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, true]
def state : State := ![57, 48, 16, 43, 16]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree004195.state FourierPilotCircleTree004204.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004195.covered FourierPilotCircleTree004204.covered
#print axioms covered
end FourierPilotCircleTree004194
