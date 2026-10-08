import FourierPilotCircleTree001916
import FourierPilotCircleTree001917
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001915
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, true, false]
def state : State := ![3, 2, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree001916.state FourierPilotCircleTree001917.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001916.covered FourierPilotCircleTree001917.covered
#print axioms covered
end FourierPilotCircleTree001915
