import FourierPilotCircleTree005641
import FourierPilotCircleTree005646
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005640
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, true]
def state : State := ![3, 3, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree005641.state FourierPilotCircleTree005646.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005641.covered FourierPilotCircleTree005646.covered
#print axioms covered
end FourierPilotCircleTree005640
