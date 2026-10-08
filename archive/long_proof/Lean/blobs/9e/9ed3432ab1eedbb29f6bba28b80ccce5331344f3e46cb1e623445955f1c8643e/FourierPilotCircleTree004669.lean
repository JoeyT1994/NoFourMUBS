import FourierPilotCircleTree004670
import FourierPilotCircleTree004671
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004669
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, true]
def state : State := ![11, 11, 10, 7, 13]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree004670.state FourierPilotCircleTree004671.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004670.covered FourierPilotCircleTree004671.covered
#print axioms covered
end FourierPilotCircleTree004669
