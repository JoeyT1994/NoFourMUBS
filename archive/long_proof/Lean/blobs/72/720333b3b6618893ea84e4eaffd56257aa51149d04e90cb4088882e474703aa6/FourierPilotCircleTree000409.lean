import FourierPilotCircleTree000410
import FourierPilotCircleTree000411
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000409
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, false]
def state : State := ![9, 9, 8, 26, 26]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree000410.state FourierPilotCircleTree000411.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000410.covered FourierPilotCircleTree000411.covered
#print axioms covered
end FourierPilotCircleTree000409
