import FourierPilotCircleTree000711
import FourierPilotCircleTree000716
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000710
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, false]
def state : State := ![7, 6, 4, 5, 7]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree000711.state FourierPilotCircleTree000716.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000711.covered FourierPilotCircleTree000716.covered
#print axioms covered
end FourierPilotCircleTree000710
