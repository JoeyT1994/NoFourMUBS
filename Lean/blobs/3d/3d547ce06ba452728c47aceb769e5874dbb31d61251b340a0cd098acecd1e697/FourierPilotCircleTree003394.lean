import FourierPilotCircleTree003395
import FourierPilotCircleTree003408
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003394
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, true]
def state : State := ![47, 19, 31, 31, 26]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree003395.state FourierPilotCircleTree003408.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003395.covered FourierPilotCircleTree003408.covered
#print axioms covered
end FourierPilotCircleTree003394
