import FourierPilotCircleTree005153
import FourierPilotCircleTree005154
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005152
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, true, true]
def state : State := ![114, 114, 64, 87, 87]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree005153.state FourierPilotCircleTree005154.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005153.covered FourierPilotCircleTree005154.covered
#print axioms covered
end FourierPilotCircleTree005152
