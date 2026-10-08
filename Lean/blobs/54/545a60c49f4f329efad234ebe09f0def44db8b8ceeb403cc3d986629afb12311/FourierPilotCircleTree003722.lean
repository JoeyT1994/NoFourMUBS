import FourierPilotCircleTree003723
import FourierPilotCircleTree003724
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003722
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, true]
def state : State := ![6, 6, 2, 2, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree003723.state FourierPilotCircleTree003724.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003723.covered FourierPilotCircleTree003724.covered
#print axioms covered
end FourierPilotCircleTree003722
