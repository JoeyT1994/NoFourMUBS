import FourierPilotCircleTree004765
import FourierPilotCircleTree004766
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004764
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, true]
def state : State := ![7, 12, 4, 10, 7]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree004765.state FourierPilotCircleTree004766.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004765.covered FourierPilotCircleTree004766.covered
#print axioms covered
end FourierPilotCircleTree004764
