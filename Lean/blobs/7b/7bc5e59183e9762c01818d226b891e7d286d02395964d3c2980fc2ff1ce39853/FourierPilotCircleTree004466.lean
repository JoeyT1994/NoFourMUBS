import FourierPilotCircleTree004467
import FourierPilotCircleTree004520
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004466
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, true]
def state : State := ![2, 3, 2, 3, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree004467.state FourierPilotCircleTree004520.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004467.covered FourierPilotCircleTree004520.covered
#print axioms covered
end FourierPilotCircleTree004466
