import FourierPilotCircleTree002558
import FourierPilotCircleTree002589
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002557
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, false]
def state : State := ![4, 13, 10, 6, 4]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree002558.state FourierPilotCircleTree002589.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002558.covered FourierPilotCircleTree002589.covered
#print axioms covered
end FourierPilotCircleTree002557
