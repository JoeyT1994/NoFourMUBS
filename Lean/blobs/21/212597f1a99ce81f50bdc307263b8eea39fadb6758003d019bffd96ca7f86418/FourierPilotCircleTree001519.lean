import FourierPilotCircleTree001520
import FourierPilotCircleTree001553
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001519
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, false]
def state : State := ![13, 4, 5, 4, 6]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree001520.state FourierPilotCircleTree001553.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001520.covered FourierPilotCircleTree001553.covered
#print axioms covered
end FourierPilotCircleTree001519
