import FourierPilotCircleTree005575
import FourierPilotCircleTree005576
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005574
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, true]
def state : State := ![4, 4, 4, 13, 13]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree005575.state FourierPilotCircleTree005576.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005575.covered FourierPilotCircleTree005576.covered
#print axioms covered
end FourierPilotCircleTree005574
