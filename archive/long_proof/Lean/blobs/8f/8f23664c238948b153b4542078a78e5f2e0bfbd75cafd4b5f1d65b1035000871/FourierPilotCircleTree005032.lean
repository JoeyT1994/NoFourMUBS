import FourierPilotCircleTree005033
import FourierPilotCircleTree005034
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005032
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, true]
def state : State := ![12, 12, 13, 11, 8]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree005033.state FourierPilotCircleTree005034.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005033.covered FourierPilotCircleTree005034.covered
#print axioms covered
end FourierPilotCircleTree005032
