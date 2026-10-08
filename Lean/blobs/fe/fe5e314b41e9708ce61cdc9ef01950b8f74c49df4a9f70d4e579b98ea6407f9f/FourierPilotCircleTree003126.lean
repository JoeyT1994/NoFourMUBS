import FourierPilotCircleTree003127
import FourierPilotCircleTree003128
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003126
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![3, 3, 2, 2, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree003127.state FourierPilotCircleTree003128.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003127.covered FourierPilotCircleTree003128.covered
#print axioms covered
end FourierPilotCircleTree003126
