import FourierPilotCircleTree003396
import FourierPilotCircleTree003407
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003395
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, true]
def state : State := ![47, 19, 31, 31, 52]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree003396.state FourierPilotCircleTree003407.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003396.covered FourierPilotCircleTree003407.covered
#print axioms covered
end FourierPilotCircleTree003395
