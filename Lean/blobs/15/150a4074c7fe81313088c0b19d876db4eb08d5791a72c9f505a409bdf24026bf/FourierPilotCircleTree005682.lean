import FourierPilotCircleTree005683
import FourierPilotCircleTree005684
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005682
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, true]
def state : State := ![28, 28, 31, 21, 21]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree005683.state FourierPilotCircleTree005684.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005683.covered FourierPilotCircleTree005684.covered
#print axioms covered
end FourierPilotCircleTree005682
