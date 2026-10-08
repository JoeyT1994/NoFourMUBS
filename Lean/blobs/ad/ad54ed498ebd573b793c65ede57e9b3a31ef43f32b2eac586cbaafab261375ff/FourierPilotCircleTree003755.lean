import FourierPilotCircleTree003756
import FourierPilotCircleTree003757
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003755
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![4, 7, 7, 5, 6]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree003756.state FourierPilotCircleTree003757.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003756.covered FourierPilotCircleTree003757.covered
#print axioms covered
end FourierPilotCircleTree003755
