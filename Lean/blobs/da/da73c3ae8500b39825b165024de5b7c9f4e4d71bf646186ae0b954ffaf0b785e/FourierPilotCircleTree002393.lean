import FourierPilotCircleTree002394
import FourierPilotCircleTree002395
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002393
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, false]
def state : State := ![14, 11, 15, 10, 8]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree002394.state FourierPilotCircleTree002395.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002394.covered FourierPilotCircleTree002395.covered
#print axioms covered
end FourierPilotCircleTree002393
