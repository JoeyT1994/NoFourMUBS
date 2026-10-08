import FourierPilotCircleTree002797
import FourierPilotCircleTree002838
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002796
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, false]
def state : State := ![6, 5, 4, 5, 6]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree002797.state FourierPilotCircleTree002838.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002797.covered FourierPilotCircleTree002838.covered
#print axioms covered
end FourierPilotCircleTree002796
