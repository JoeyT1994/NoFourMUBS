import FourierPilotCircleTree001531
import FourierPilotCircleTree001548
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001530
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, false]
def state : State := ![27, 18, 20, 8, 25]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree001531.state FourierPilotCircleTree001548.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001531.covered FourierPilotCircleTree001548.covered
#print axioms covered
end FourierPilotCircleTree001530
