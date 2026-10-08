import FourierPilotCircleTree003600
import FourierPilotCircleTree003601
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003599
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, true]
def state : State := ![2, 3, 3, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree003600.state FourierPilotCircleTree003601.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003600.covered FourierPilotCircleTree003601.covered
#print axioms covered
end FourierPilotCircleTree003599
