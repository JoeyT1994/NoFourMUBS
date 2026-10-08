import FourierPilotCircleTree005253
import FourierPilotCircleTree005268
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005252
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, true]
def state : State := ![10, 14, 13, 8, 11]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree005253.state FourierPilotCircleTree005268.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005253.covered FourierPilotCircleTree005268.covered
#print axioms covered
end FourierPilotCircleTree005252
