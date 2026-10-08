import FourierPilotCircleTree004072
import FourierPilotCircleTree004107
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004071
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, true]
def state : State := ![5, 7, 6, 7, 5]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree004072.state FourierPilotCircleTree004107.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004072.covered FourierPilotCircleTree004107.covered
#print axioms covered
end FourierPilotCircleTree004071
