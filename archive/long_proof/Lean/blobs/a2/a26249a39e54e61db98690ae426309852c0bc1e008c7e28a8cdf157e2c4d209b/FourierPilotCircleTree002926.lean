import FourierPilotCircleTree002927
import FourierPilotCircleTree002966
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002926
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![10, 13, 4, 7, 4]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree002927.state FourierPilotCircleTree002966.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002927.covered FourierPilotCircleTree002966.covered
#print axioms covered
end FourierPilotCircleTree002926
