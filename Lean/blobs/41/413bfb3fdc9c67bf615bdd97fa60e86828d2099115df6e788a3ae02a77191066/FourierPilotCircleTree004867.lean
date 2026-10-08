import FourierPilotCircleTree004868
import FourierPilotCircleTree004871
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004867
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, true]
def state : State := ![11, 11, 10, 12, 15]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree004868.state FourierPilotCircleTree004871.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004868.covered FourierPilotCircleTree004871.covered
#print axioms covered
end FourierPilotCircleTree004867
