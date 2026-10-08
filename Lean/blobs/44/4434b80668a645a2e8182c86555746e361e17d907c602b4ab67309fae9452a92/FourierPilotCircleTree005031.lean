import FourierPilotCircleTree005032
import FourierPilotCircleTree005037
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005031
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, true]
def state : State := ![12, 12, 13, 11, 4]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree005032.state FourierPilotCircleTree005037.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005032.covered FourierPilotCircleTree005037.covered
#print axioms covered
end FourierPilotCircleTree005031
