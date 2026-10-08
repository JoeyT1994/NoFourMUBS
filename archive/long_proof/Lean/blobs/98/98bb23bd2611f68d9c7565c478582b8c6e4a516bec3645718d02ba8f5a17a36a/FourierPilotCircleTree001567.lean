import FourierPilotCircleTree001568
import FourierPilotCircleTree001569
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001567
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, false]
def state : State := ![7, 6, 4, 2, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree001568.state FourierPilotCircleTree001569.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001568.covered FourierPilotCircleTree001569.covered
#print axioms covered
end FourierPilotCircleTree001567
