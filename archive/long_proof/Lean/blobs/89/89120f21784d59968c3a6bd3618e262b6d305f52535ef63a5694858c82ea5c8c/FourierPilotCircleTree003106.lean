import FourierPilotCircleTree003107
import FourierPilotCircleTree003110
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003106
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![58, 18, 31, 50, 44]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree003107.state FourierPilotCircleTree003110.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003107.covered FourierPilotCircleTree003110.covered
#print axioms covered
end FourierPilotCircleTree003106
