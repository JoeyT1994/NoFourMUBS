import FourierPilotCircleTree004425
import FourierPilotCircleTree004436
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004424
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, true]
def state : State := ![12, 9, 4, 7, 13]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree004425.state FourierPilotCircleTree004436.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004425.covered FourierPilotCircleTree004436.covered
#print axioms covered
end FourierPilotCircleTree004424
