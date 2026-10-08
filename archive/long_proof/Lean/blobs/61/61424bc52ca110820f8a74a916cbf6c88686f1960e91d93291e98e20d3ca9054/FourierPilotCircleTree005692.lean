import FourierPilotCircleTree005693
import FourierPilotCircleTree005694
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005692
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, true]
def state : State := ![57, 57, 63, 43, 43]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree005693.state FourierPilotCircleTree005694.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005693.covered FourierPilotCircleTree005694.covered
#print axioms covered
end FourierPilotCircleTree005692
