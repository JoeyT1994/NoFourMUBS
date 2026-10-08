import FourierPilotCircleTree001521
import FourierPilotCircleTree001552
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001520
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, false]
def state : State := ![13, 4, 10, 4, 6]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree001521.state FourierPilotCircleTree001552.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001521.covered FourierPilotCircleTree001552.covered
#print axioms covered
end FourierPilotCircleTree001520
