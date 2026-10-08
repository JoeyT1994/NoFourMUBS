import FourierPilotCircleTree001926
import FourierPilotCircleTree001927
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001925
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, true, false]
def state : State := ![6, 5, 7, 2, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree001926.state FourierPilotCircleTree001927.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001926.covered FourierPilotCircleTree001927.covered
#print axioms covered
end FourierPilotCircleTree001925
