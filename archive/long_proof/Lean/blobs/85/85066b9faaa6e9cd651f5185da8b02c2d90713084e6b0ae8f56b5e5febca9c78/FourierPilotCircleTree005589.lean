import FourierPilotCircleTree005590
import FourierPilotCircleTree005605
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005589
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, true]
def state : State := ![38, 19, 16, 52, 52]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree005590.state FourierPilotCircleTree005605.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005590.covered FourierPilotCircleTree005605.covered
#print axioms covered
end FourierPilotCircleTree005589
