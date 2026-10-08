import FourierPilotCircleTree003670
import FourierPilotCircleTree003671
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003669
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, true]
def state : State := ![12, 5, 4, 5, 6]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree003670.state FourierPilotCircleTree003671.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003670.covered FourierPilotCircleTree003671.covered
#print axioms covered
end FourierPilotCircleTree003669
