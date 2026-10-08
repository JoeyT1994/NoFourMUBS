import FourierPilotCircleTree001062
import FourierPilotCircleTree001119
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001061
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, false]
def state : State := ![3, 3, 2, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree001062.state FourierPilotCircleTree001119.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001062.covered FourierPilotCircleTree001119.covered
#print axioms covered
end FourierPilotCircleTree001061
