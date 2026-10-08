import FourierPilotCircleTree005374
import FourierPilotCircleTree005379
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005373
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, true]
def state : State := ![2, 2, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree005374.state FourierPilotCircleTree005379.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005374.covered FourierPilotCircleTree005379.covered
#print axioms covered
end FourierPilotCircleTree005373
