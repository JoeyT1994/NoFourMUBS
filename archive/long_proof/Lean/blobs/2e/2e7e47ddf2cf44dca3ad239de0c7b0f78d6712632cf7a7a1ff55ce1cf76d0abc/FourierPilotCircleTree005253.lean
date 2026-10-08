import FourierPilotCircleTree005254
import FourierPilotCircleTree005267
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005253
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, true]
def state : State := ![10, 14, 13, 8, 22]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree005254.state FourierPilotCircleTree005267.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005254.covered FourierPilotCircleTree005267.covered
#print axioms covered
end FourierPilotCircleTree005253
