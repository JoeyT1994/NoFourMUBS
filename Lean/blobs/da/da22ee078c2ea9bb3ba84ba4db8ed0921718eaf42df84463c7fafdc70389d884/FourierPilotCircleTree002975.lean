import FourierPilotCircleTree002976
import FourierPilotCircleTree002987
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002975
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![10, 7, 4, 7, 4]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree002976.state FourierPilotCircleTree002987.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002976.covered FourierPilotCircleTree002987.covered
#print axioms covered
end FourierPilotCircleTree002975
