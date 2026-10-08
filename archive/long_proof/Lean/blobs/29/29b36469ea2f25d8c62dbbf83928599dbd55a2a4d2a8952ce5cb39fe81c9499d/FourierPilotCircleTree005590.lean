import FourierPilotCircleTree005591
import FourierPilotCircleTree005604
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005590
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, true]
def state : State := ![38, 38, 16, 52, 52]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree005591.state FourierPilotCircleTree005604.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005591.covered FourierPilotCircleTree005604.covered
#print axioms covered
end FourierPilotCircleTree005590
