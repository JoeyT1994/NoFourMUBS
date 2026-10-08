import FourierPilotCircleTree001368
import FourierPilotCircleTree001369
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001367
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![59, 37, 16, 51, 45]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree001368.state FourierPilotCircleTree001369.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001368.covered FourierPilotCircleTree001369.covered
#print axioms covered
end FourierPilotCircleTree001367
