import FourierPilotCircleTree001864
import FourierPilotCircleTree001909
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001863
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, true, false]
def state : State := ![5, 6, 4, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree001864.state FourierPilotCircleTree001909.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001864.covered FourierPilotCircleTree001909.covered
#print axioms covered
end FourierPilotCircleTree001863
