import FourierPilotCircleTree001760
import FourierPilotCircleTree001761
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001759
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, false]
def state : State := ![27, 17, 20, 42, 43]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree001760.state FourierPilotCircleTree001761.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001760.covered FourierPilotCircleTree001761.covered
#print axioms covered
end FourierPilotCircleTree001759
