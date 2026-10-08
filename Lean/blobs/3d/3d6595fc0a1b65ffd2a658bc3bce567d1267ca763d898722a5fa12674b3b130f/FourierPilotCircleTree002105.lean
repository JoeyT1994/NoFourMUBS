import FourierPilotCircleTree002106
import FourierPilotCircleTree002107
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002105
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, true, false]
def state : State := ![10, 14, 8, 7, 4]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree002106.state FourierPilotCircleTree002107.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002106.covered FourierPilotCircleTree002107.covered
#print axioms covered
end FourierPilotCircleTree002105
