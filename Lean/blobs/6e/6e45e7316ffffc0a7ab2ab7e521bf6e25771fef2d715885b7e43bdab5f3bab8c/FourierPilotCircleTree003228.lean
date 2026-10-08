import FourierPilotCircleTree003229
import FourierPilotCircleTree003236
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003228
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, true]
def state : State := ![9, 12, 8, 13, 15]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree003229.state FourierPilotCircleTree003236.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003229.covered FourierPilotCircleTree003236.covered
#print axioms covered
end FourierPilotCircleTree003228
