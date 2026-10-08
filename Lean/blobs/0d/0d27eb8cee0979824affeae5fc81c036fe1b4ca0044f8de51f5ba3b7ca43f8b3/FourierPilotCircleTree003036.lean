import FourierPilotCircleTree003037
import FourierPilotCircleTree003074
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003036
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![13, 10, 15, 4, 7]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree003037.state FourierPilotCircleTree003074.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003037.covered FourierPilotCircleTree003074.covered
#print axioms covered
end FourierPilotCircleTree003036
