import FourierPilotCircleTree003380
import FourierPilotCircleTree003381
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003379
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, true]
def state : State := ![11, 9, 7, 7, 13]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree003380.state FourierPilotCircleTree003381.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003380.covered FourierPilotCircleTree003381.covered
#print axioms covered
end FourierPilotCircleTree003379
