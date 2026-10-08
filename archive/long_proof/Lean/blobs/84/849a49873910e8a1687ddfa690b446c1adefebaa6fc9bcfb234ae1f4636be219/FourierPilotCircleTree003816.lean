import FourierPilotCircleTree003817
import FourierPilotCircleTree003818
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003816
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![5, 6, 7, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree003817.state FourierPilotCircleTree003818.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003817.covered FourierPilotCircleTree003818.covered
#print axioms covered
end FourierPilotCircleTree003816
