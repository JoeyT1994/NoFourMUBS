import FourierPilotCircleTree005065
import FourierPilotCircleTree005066
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005064
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, true, true]
def state : State := ![4, 4, 7, 13, 6]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree005065.state FourierPilotCircleTree005066.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005065.covered FourierPilotCircleTree005066.covered
#print axioms covered
end FourierPilotCircleTree005064
