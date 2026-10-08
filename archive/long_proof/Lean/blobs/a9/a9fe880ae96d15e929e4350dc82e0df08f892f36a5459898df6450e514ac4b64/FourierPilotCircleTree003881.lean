import FourierPilotCircleTree003882
import FourierPilotCircleTree003917
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003881
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![13, 10, 8, 4, 7]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree003882.state FourierPilotCircleTree003917.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003882.covered FourierPilotCircleTree003917.covered
#print axioms covered
end FourierPilotCircleTree003881
