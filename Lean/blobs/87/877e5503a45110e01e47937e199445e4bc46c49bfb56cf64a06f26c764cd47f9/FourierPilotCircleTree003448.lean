import FourierPilotCircleTree003449
import FourierPilotCircleTree003454
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003448
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, true]
def state : State := ![37, 54, 41, 51, 32]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree003449.state FourierPilotCircleTree003454.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003449.covered FourierPilotCircleTree003454.covered
#print axioms covered
end FourierPilotCircleTree003448
