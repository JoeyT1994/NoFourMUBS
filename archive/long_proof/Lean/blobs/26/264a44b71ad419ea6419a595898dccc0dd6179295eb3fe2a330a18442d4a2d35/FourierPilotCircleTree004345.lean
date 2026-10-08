import FourierPilotCircleTree004346
import FourierPilotCircleTree004347
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004345
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, true]
def state : State := ![6, 4, 5, 2, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree004346.state FourierPilotCircleTree004347.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004346.covered FourierPilotCircleTree004347.covered
#print axioms covered
end FourierPilotCircleTree004345
