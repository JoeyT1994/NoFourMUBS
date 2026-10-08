import FourierPilotCircleTree004188
import FourierPilotCircleTree004207
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004187
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, true]
def state : State := ![28, 24, 8, 21, 8]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree004188.state FourierPilotCircleTree004207.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004188.covered FourierPilotCircleTree004207.covered
#print axioms covered
end FourierPilotCircleTree004187
