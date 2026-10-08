import FourierPilotCircleTree002344
import FourierPilotCircleTree002369
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002343
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, false]
def state : State := ![4, 3, 2, 3, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree002344.state FourierPilotCircleTree002369.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002344.covered FourierPilotCircleTree002369.covered
#print axioms covered
end FourierPilotCircleTree002343
