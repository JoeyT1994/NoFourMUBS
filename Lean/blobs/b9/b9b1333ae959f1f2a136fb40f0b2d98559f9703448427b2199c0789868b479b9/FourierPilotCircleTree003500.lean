import FourierPilotCircleTree003501
import FourierPilotCircleTree003516
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003500
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, true]
def state : State := ![29, 20, 27, 22, 31]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree003501.state FourierPilotCircleTree003516.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003501.covered FourierPilotCircleTree003516.covered
#print axioms covered
end FourierPilotCircleTree003500
