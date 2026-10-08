import FourierPilotCircleTree002718
import FourierPilotCircleTree002719
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002717
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, false]
def state : State := ![2, 2, 3, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree002718.state FourierPilotCircleTree002719.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002718.covered FourierPilotCircleTree002719.covered
#print axioms covered
end FourierPilotCircleTree002717
