import FourierPilotCircleTree002346
import FourierPilotCircleTree002367
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002345
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, false]
def state : State := ![4, 6, 4, 3, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree002346.state FourierPilotCircleTree002367.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002346.covered FourierPilotCircleTree002367.covered
#print axioms covered
end FourierPilotCircleTree002345
