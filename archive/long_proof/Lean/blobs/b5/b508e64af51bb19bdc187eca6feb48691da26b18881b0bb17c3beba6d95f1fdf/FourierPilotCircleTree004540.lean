import FourierPilotCircleTree004541
import FourierPilotCircleTree004542
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004540
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, true]
def state : State := ![12, 11, 7, 10, 6]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree004541.state FourierPilotCircleTree004542.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004541.covered FourierPilotCircleTree004542.covered
#print axioms covered
end FourierPilotCircleTree004540
