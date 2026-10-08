import FourierPilotCircleTree004432
import FourierPilotCircleTree004433
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004431
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, true]
def state : State := ![24, 19, 8, 15, 26]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree004432.state FourierPilotCircleTree004433.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004432.covered FourierPilotCircleTree004433.covered
#print axioms covered
end FourierPilotCircleTree004431
