import FourierPilotCircleTree001894
import FourierPilotCircleTree001897
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001893
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, true, false]
def state : State := ![93, 98, 32, 107, 84]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree001894.state FourierPilotCircleTree001897.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001894.covered FourierPilotCircleTree001897.covered
#print axioms covered
end FourierPilotCircleTree001893
