import FourierPilotCircleTree004494
import FourierPilotCircleTree004509
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004493
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, true]
def state : State := ![46, 49, 16, 53, 21]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree004494.state FourierPilotCircleTree004509.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004494.covered FourierPilotCircleTree004509.covered
#print axioms covered
end FourierPilotCircleTree004493
