import FourierPilotCircleTree002981
import FourierPilotCircleTree002984
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002980
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![10, 14, 8, 15, 8]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree002981.state FourierPilotCircleTree002984.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002981.covered FourierPilotCircleTree002984.covered
#print axioms covered
end FourierPilotCircleTree002980
