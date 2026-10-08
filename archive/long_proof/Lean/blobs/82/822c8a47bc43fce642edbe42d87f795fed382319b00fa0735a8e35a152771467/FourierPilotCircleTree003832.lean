import FourierPilotCircleTree003833
import FourierPilotCircleTree003858
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003832
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![20, 27, 31, 15, 8]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree003833.state FourierPilotCircleTree003858.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003833.covered FourierPilotCircleTree003858.covered
#print axioms covered
end FourierPilotCircleTree003832
