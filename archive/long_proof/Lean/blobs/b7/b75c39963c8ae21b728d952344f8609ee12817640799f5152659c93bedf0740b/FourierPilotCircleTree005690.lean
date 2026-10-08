import FourierPilotCircleTree005691
import FourierPilotCircleTree005692
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005690
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, true]
def state : State := ![57, 57, 31, 43, 43]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree005691.state FourierPilotCircleTree005692.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005691.covered FourierPilotCircleTree005692.covered
#print axioms covered
end FourierPilotCircleTree005690
