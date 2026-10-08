import FourierPilotCircleTree004481
import FourierPilotCircleTree004514
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004480
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, true]
def state : State := ![11, 12, 4, 13, 10]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree004481.state FourierPilotCircleTree004514.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004481.covered FourierPilotCircleTree004514.covered
#print axioms covered
end FourierPilotCircleTree004480
