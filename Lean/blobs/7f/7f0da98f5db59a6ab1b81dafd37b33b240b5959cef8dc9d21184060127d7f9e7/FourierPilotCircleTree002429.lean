import FourierPilotCircleTree002430
import FourierPilotCircleTree002431
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002429
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, false]
def state : State := ![7, 10, 6, 6, 6]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree002430.state FourierPilotCircleTree002431.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002430.covered FourierPilotCircleTree002431.covered
#print axioms covered
end FourierPilotCircleTree002429
