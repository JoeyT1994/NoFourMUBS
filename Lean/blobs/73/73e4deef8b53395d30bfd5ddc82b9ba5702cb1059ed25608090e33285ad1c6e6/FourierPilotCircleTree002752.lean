import FourierPilotCircleTree002753
import FourierPilotCircleTree002754
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002752
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, false]
def state : State := ![23, 24, 15, 26, 21]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree002753.state FourierPilotCircleTree002754.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002753.covered FourierPilotCircleTree002754.covered
#print axioms covered
end FourierPilotCircleTree002752
