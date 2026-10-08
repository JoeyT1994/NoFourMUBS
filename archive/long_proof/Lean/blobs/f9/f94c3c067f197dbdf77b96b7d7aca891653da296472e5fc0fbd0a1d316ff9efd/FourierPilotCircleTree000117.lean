import FourierPilotCircleTree000118
import FourierPilotCircleTree000119
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000117
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, false]
def state : State := ![6, 4, 5, 7, 6]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree000118.state FourierPilotCircleTree000119.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000118.covered FourierPilotCircleTree000119.covered
#print axioms covered
end FourierPilotCircleTree000117
