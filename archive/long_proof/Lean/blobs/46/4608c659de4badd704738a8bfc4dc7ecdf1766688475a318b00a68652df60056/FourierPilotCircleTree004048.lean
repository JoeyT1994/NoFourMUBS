import FourierPilotCircleTree004049
import FourierPilotCircleTree004050
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004048
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, true]
def state : State := ![38, 95, 63, 104, 63]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree004049.state FourierPilotCircleTree004050.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004049.covered FourierPilotCircleTree004050.covered
#print axioms covered
end FourierPilotCircleTree004048
