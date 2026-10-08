import FourierPilotCircleTree005407
import FourierPilotCircleTree005408
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005406
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, true]
def state : State := ![18, 27, 20, 25, 15]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree005407.state FourierPilotCircleTree005408.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005407.covered FourierPilotCircleTree005408.covered
#print axioms covered
end FourierPilotCircleTree005406
