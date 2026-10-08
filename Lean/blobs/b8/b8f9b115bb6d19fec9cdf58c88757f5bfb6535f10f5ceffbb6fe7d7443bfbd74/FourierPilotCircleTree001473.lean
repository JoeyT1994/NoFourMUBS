import FourierPilotCircleTree001474
import FourierPilotCircleTree001475
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001473
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, false]
def state : State := ![20, 14, 13, 15, 22]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree001474.state FourierPilotCircleTree001475.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001474.covered FourierPilotCircleTree001475.covered
#print axioms covered
end FourierPilotCircleTree001473
