import FourierPilotCircleTree002975
import FourierPilotCircleTree002988
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002974
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![5, 7, 4, 7, 4]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree002975.state FourierPilotCircleTree002988.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002975.covered FourierPilotCircleTree002988.covered
#print axioms covered
end FourierPilotCircleTree002974
