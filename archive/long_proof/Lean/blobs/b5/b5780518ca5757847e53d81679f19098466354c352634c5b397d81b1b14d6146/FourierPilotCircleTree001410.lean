import FourierPilotCircleTree001411
import FourierPilotCircleTree001414
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001410
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, false]
def state : State := ![4, 11, 7, 6, 7]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree001411.state FourierPilotCircleTree001414.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001411.covered FourierPilotCircleTree001414.covered
#print axioms covered
end FourierPilotCircleTree001410
