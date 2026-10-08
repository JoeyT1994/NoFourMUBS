import FourierPilotCircleTree002571
import FourierPilotCircleTree002572
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002570
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, false]
def state : State := ![18, 27, 20, 51, 16]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree002571.state FourierPilotCircleTree002572.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002571.covered FourierPilotCircleTree002572.covered
#print axioms covered
end FourierPilotCircleTree002570
