import FourierPilotCircleTree004795
import FourierPilotCircleTree004796
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004794
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, true]
def state : State := ![24, 25, 27, 16, 21]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree004795.state FourierPilotCircleTree004796.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004795.covered FourierPilotCircleTree004796.covered
#print axioms covered
end FourierPilotCircleTree004794
