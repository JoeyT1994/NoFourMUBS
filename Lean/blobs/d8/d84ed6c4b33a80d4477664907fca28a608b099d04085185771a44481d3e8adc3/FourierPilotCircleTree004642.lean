import FourierPilotCircleTree004643
import FourierPilotCircleTree004714
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004642
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, true]
def state : State := ![2, 2, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree004643.state FourierPilotCircleTree004714.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004643.covered FourierPilotCircleTree004714.covered
#print axioms covered
end FourierPilotCircleTree004642
