import FourierPilotCircleTree003502
import FourierPilotCircleTree003515
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003501
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, true]
def state : State := ![29, 20, 27, 44, 31]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree003502.state FourierPilotCircleTree003515.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003502.covered FourierPilotCircleTree003515.covered
#print axioms covered
end FourierPilotCircleTree003501
