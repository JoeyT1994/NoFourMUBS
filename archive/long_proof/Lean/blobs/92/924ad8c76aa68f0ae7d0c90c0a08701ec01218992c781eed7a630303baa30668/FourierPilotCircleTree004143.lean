import FourierPilotCircleTree004144
import FourierPilotCircleTree004155
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004143
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, true]
def state : State := ![27, 37, 20, 16, 51]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree004144.state FourierPilotCircleTree004155.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004144.covered FourierPilotCircleTree004155.covered
#print axioms covered
end FourierPilotCircleTree004143
