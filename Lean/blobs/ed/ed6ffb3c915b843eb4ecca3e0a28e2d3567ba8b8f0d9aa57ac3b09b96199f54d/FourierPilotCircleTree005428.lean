import FourierPilotCircleTree005429
import FourierPilotCircleTree005430
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005428
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, true]
def state : State := ![5, 6, 3, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree005429.state FourierPilotCircleTree005430.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005429.covered FourierPilotCircleTree005430.covered
#print axioms covered
end FourierPilotCircleTree005428
