import FourierPilotCircleTree002553
import FourierPilotCircleTree002592
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002552
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, false]
def state : State := ![4, 6, 5, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree002553.state FourierPilotCircleTree002592.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002553.covered FourierPilotCircleTree002592.covered
#print axioms covered
end FourierPilotCircleTree002552
