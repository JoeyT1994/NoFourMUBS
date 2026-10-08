import FourierPilotCircleTree004662
import FourierPilotCircleTree004669
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004661
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, true]
def state : State := ![11, 11, 10, 7, 6]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree004662.state FourierPilotCircleTree004669.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004662.covered FourierPilotCircleTree004669.covered
#print axioms covered
end FourierPilotCircleTree004661
