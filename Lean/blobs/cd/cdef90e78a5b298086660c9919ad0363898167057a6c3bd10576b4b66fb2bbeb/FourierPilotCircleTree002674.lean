import FourierPilotCircleTree002675
import FourierPilotCircleTree002694
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002674
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, false]
def state : State := ![24, 28, 8, 8, 21]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree002675.state FourierPilotCircleTree002694.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002675.covered FourierPilotCircleTree002694.covered
#print axioms covered
end FourierPilotCircleTree002674
