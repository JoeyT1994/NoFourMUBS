import FourierPilotCircleTree003762
import FourierPilotCircleTree003763
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003761
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![9, 14, 7, 11, 12]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree003762.state FourierPilotCircleTree003763.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003762.covered FourierPilotCircleTree003763.covered
#print axioms covered
end FourierPilotCircleTree003761
