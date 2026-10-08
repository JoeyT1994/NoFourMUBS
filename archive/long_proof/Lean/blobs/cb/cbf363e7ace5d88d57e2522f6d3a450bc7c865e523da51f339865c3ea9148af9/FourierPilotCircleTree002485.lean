import FourierPilotCircleTree002486
import FourierPilotCircleTree002487
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002485
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, false]
def state : State := ![2, 2, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree002486.state FourierPilotCircleTree002487.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002486.covered FourierPilotCircleTree002487.covered
#print axioms covered
end FourierPilotCircleTree002485
