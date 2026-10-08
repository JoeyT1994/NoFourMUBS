import FourierPilotCircleTree002672
import FourierPilotCircleTree002673
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002671
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, false]
def state : State := ![24, 14, 8, 8, 10]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree002672.state FourierPilotCircleTree002673.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002672.covered FourierPilotCircleTree002673.covered
#print axioms covered
end FourierPilotCircleTree002671
