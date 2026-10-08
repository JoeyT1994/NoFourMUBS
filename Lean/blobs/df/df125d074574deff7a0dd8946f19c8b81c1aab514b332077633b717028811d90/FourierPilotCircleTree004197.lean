import FourierPilotCircleTree004198
import FourierPilotCircleTree004199
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004197
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, true]
def state : State := ![57, 96, 32, 43, 32]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree004198.state FourierPilotCircleTree004199.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004198.covered FourierPilotCircleTree004199.covered
#print axioms covered
end FourierPilotCircleTree004197
