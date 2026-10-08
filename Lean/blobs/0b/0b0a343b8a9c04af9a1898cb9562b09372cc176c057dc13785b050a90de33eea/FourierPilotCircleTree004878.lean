import FourierPilotCircleTree004879
import FourierPilotCircleTree004912
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004878
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, true]
def state : State := ![22, 23, 20, 13, 15]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree004879.state FourierPilotCircleTree004912.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004879.covered FourierPilotCircleTree004912.covered
#print axioms covered
end FourierPilotCircleTree004878
