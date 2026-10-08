import FourierPilotCircleTree002274
import FourierPilotCircleTree002325
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002273
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, false]
def state : State := ![4, 3, 2, 2, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree002274.state FourierPilotCircleTree002325.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002274.covered FourierPilotCircleTree002325.covered
#print axioms covered
end FourierPilotCircleTree002273
