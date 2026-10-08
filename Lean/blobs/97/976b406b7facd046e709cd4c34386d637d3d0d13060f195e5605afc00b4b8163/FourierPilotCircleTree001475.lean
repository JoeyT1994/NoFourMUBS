import FourierPilotCircleTree001476
import FourierPilotCircleTree001477
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001475
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, false]
def state : State := ![20, 14, 27, 15, 22]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree001476.state FourierPilotCircleTree001477.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001476.covered FourierPilotCircleTree001477.covered
#print axioms covered
end FourierPilotCircleTree001475
