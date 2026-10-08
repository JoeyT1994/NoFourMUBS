import FourierPilotCircleTree005685
import FourierPilotCircleTree005686
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005684
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, true]
def state : State := ![28, 28, 31, 43, 21]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree005685.state FourierPilotCircleTree005686.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005685.covered FourierPilotCircleTree005686.covered
#print axioms covered
end FourierPilotCircleTree005684
