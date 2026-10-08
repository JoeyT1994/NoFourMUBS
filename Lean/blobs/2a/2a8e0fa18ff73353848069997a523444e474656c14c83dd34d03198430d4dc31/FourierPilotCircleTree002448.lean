import FourierPilotCircleTree002449
import FourierPilotCircleTree002460
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002448
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, false]
def state : State := ![30, 40, 54, 52, 53]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree002449.state FourierPilotCircleTree002460.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002449.covered FourierPilotCircleTree002460.covered
#print axioms covered
end FourierPilotCircleTree002448
