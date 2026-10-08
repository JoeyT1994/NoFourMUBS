import FourierPilotCircleTree003641
import FourierPilotCircleTree003642
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003640
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, true]
def state : State := ![93, 98, 63, 107, 84]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree003641.state FourierPilotCircleTree003642.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003641.covered FourierPilotCircleTree003642.covered
#print axioms covered
end FourierPilotCircleTree003640
