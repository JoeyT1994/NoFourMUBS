import FourierPilotCircleTree003104
import FourierPilotCircleTree003113
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003103
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![29, 18, 31, 25, 22]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree003104.state FourierPilotCircleTree003113.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003104.covered FourierPilotCircleTree003113.covered
#print axioms covered
end FourierPilotCircleTree003103
