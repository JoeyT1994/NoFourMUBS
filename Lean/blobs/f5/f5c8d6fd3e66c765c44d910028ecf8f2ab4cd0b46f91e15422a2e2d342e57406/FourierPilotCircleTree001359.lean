import FourierPilotCircleTree001360
import FourierPilotCircleTree001361
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001359
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![29, 18, 16, 25, 22]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree001360.state FourierPilotCircleTree001361.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001360.covered FourierPilotCircleTree001361.covered
#print axioms covered
end FourierPilotCircleTree001359
