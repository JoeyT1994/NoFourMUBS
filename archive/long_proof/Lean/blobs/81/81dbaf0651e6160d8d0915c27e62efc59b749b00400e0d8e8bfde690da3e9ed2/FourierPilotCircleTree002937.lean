import FourierPilotCircleTree002938
import FourierPilotCircleTree002959
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002937
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![20, 27, 16, 30, 17]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree002938.state FourierPilotCircleTree002959.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002938.covered FourierPilotCircleTree002959.covered
#print axioms covered
end FourierPilotCircleTree002937
