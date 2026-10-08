import FourierPilotCircleTree005152
import FourierPilotCircleTree005155
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005151
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, true, true]
def state : State := ![114, 114, 32, 87, 87]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree005152.state FourierPilotCircleTree005155.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005152.covered FourierPilotCircleTree005155.covered
#print axioms covered
end FourierPilotCircleTree005151
