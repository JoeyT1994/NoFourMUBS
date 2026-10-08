import FourierPilotCircleTree000023
import FourierPilotCircleTree000056
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000022
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, false]
def state : State := ![4, 3, 2, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree000023.state FourierPilotCircleTree000056.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000023.covered FourierPilotCircleTree000056.covered
#print axioms covered
end FourierPilotCircleTree000022
