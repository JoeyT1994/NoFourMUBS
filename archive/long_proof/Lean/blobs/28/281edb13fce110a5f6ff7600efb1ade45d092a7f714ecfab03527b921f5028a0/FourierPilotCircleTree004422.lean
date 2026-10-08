import FourierPilotCircleTree004423
import FourierPilotCircleTree004424
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004422
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, true]
def state : State := ![12, 4, 4, 7, 13]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree004423.state FourierPilotCircleTree004424.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004423.covered FourierPilotCircleTree004424.covered
#print axioms covered
end FourierPilotCircleTree004422
