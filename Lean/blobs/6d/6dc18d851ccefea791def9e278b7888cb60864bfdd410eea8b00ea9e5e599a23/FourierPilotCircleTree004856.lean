import FourierPilotCircleTree004857
import FourierPilotCircleTree004916
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004856
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, true]
def state : State := ![5, 5, 5, 3, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree004857.state FourierPilotCircleTree004916.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004857.covered FourierPilotCircleTree004916.covered
#print axioms covered
end FourierPilotCircleTree004856
