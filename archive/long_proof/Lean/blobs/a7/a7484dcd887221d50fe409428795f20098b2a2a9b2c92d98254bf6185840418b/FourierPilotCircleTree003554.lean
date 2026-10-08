import FourierPilotCircleTree003555
import FourierPilotCircleTree003562
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003554
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, true]
def state : State := ![48, 57, 32, 16, 43]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree003555.state FourierPilotCircleTree003562.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003555.covered FourierPilotCircleTree003562.covered
#print axioms covered
end FourierPilotCircleTree003554
