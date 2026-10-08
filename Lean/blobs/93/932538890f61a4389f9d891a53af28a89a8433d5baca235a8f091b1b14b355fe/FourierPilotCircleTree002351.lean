import FourierPilotCircleTree002352
import FourierPilotCircleTree002353
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002351
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, false]
def state : State := ![4, 12, 4, 13, 7]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree002352.state FourierPilotCircleTree002353.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002352.covered FourierPilotCircleTree002353.covered
#print axioms covered
end FourierPilotCircleTree002351
