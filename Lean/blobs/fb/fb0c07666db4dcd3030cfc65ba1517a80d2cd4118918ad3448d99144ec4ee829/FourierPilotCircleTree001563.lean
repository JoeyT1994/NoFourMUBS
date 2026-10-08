import FourierPilotCircleTree001564
import FourierPilotCircleTree001565
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001563
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, false]
def state : State := ![3, 3, 2, 2, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree001564.state FourierPilotCircleTree001565.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001564.covered FourierPilotCircleTree001565.covered
#print axioms covered
end FourierPilotCircleTree001563
