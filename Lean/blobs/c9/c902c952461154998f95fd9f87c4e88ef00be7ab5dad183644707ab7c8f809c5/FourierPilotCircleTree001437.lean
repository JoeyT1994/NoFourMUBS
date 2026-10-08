import FourierPilotCircleTree001438
import FourierPilotCircleTree001439
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001437
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, false]
def state : State := ![38, 47, 63, 52, 63]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree001438.state FourierPilotCircleTree001439.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001438.covered FourierPilotCircleTree001439.covered
#print axioms covered
end FourierPilotCircleTree001437
