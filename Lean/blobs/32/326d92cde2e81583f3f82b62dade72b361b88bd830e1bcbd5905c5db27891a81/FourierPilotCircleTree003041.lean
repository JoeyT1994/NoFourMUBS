import FourierPilotCircleTree003042
import FourierPilotCircleTree003073
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003041
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![27, 10, 15, 8, 15]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree003042.state FourierPilotCircleTree003073.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003042.covered FourierPilotCircleTree003073.covered
#print axioms covered
end FourierPilotCircleTree003041
