import FourierPilotCircleTree002574
import FourierPilotCircleTree002575
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002573
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, false]
def state : State := ![37, 54, 20, 51, 16]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree002574.state FourierPilotCircleTree002575.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002574.covered FourierPilotCircleTree002575.covered
#print axioms covered
end FourierPilotCircleTree002573
