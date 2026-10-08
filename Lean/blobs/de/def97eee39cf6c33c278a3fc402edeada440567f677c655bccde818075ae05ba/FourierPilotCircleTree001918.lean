import FourierPilotCircleTree001919
import FourierPilotCircleTree001920
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001918
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, true, false]
def state : State := ![3, 2, 3, 2, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree001919.state FourierPilotCircleTree001920.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001919.covered FourierPilotCircleTree001920.covered
#print axioms covered
end FourierPilotCircleTree001918
