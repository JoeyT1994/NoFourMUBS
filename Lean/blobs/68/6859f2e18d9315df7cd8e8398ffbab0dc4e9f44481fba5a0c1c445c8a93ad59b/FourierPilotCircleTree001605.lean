import FourierPilotCircleTree001606
import FourierPilotCircleTree001607
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001605
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, false]
def state : State := ![7, 12, 4, 11, 4]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree001606.state FourierPilotCircleTree001607.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001606.covered FourierPilotCircleTree001607.covered
#print axioms covered
end FourierPilotCircleTree001605
