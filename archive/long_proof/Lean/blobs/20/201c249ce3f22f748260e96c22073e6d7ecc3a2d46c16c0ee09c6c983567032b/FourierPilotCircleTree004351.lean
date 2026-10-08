import FourierPilotCircleTree004352
import FourierPilotCircleTree004393
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004351
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, true]
def state : State := ![13, 4, 5, 5, 5]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree004352.state FourierPilotCircleTree004393.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004352.covered FourierPilotCircleTree004393.covered
#print axioms covered
end FourierPilotCircleTree004351
