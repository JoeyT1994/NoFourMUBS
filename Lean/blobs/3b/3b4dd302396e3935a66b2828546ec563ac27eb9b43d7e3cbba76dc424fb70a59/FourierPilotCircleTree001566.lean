import FourierPilotCircleTree001567
import FourierPilotCircleTree001610
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001566
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, false]
def state : State := ![7, 6, 2, 2, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree001567.state FourierPilotCircleTree001610.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001567.covered FourierPilotCircleTree001610.covered
#print axioms covered
end FourierPilotCircleTree001566
