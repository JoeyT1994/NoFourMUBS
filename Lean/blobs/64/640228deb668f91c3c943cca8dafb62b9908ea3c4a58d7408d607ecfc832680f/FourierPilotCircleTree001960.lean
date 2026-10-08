import FourierPilotCircleTree001961
import FourierPilotCircleTree001962
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001960
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, true, false]
def state : State := ![98, 93, 127, 84, 107]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree001961.state FourierPilotCircleTree001962.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001961.covered FourierPilotCircleTree001962.covered
#print axioms covered
end FourierPilotCircleTree001960
