import FourierPilotCircleTree001397
import FourierPilotCircleTree001398
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001396
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, false]
def state : State := ![2, 2, 3, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree001397.state FourierPilotCircleTree001398.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001397.covered FourierPilotCircleTree001398.covered
#print axioms covered
end FourierPilotCircleTree001396
