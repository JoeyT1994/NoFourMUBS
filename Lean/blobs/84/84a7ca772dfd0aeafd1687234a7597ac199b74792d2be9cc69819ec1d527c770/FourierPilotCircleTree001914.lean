import FourierPilotCircleTree001915
import FourierPilotCircleTree001974
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001914
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, true, false]
def state : State := ![3, 1, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree001915.state FourierPilotCircleTree001974.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001915.covered FourierPilotCircleTree001974.covered
#print axioms covered
end FourierPilotCircleTree001914
