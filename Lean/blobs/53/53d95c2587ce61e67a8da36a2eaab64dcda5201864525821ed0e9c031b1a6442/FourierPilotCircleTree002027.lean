import FourierPilotCircleTree002028
import FourierPilotCircleTree002029
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002027
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, true, false]
def state : State := ![18, 29, 16, 45, 51]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree002028.state FourierPilotCircleTree002029.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002028.covered FourierPilotCircleTree002029.covered
#print axioms covered
end FourierPilotCircleTree002027
