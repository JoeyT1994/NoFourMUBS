import FourierPilotCircleTree004489
import FourierPilotCircleTree004510
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004488
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, true]
def state : State := ![23, 24, 16, 26, 21]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree004489.state FourierPilotCircleTree004510.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004489.covered FourierPilotCircleTree004510.covered
#print axioms covered
end FourierPilotCircleTree004488
