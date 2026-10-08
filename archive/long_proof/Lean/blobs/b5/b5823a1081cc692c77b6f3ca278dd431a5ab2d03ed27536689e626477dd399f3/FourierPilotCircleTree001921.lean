import FourierPilotCircleTree001922
import FourierPilotCircleTree001923
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001921
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, true, false]
def state : State := ![6, 2, 3, 2, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree001922.state FourierPilotCircleTree001923.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001922.covered FourierPilotCircleTree001923.covered
#print axioms covered
end FourierPilotCircleTree001921
