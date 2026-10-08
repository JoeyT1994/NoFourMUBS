import FourierPilotCircleTree002503
import FourierPilotCircleTree002504
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002502
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, false]
def state : State := ![11, 4, 7, 7, 12]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree002503.state FourierPilotCircleTree002504.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002503.covered FourierPilotCircleTree002504.covered
#print axioms covered
end FourierPilotCircleTree002502
