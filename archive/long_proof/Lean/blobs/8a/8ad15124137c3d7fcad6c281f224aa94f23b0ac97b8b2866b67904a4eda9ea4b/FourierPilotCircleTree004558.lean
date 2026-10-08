import FourierPilotCircleTree004559
import FourierPilotCircleTree004560
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004558
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, true]
def state : State := ![49, 46, 31, 42, 53]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree004559.state FourierPilotCircleTree004560.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004559.covered FourierPilotCircleTree004560.covered
#print axioms covered
end FourierPilotCircleTree004558
