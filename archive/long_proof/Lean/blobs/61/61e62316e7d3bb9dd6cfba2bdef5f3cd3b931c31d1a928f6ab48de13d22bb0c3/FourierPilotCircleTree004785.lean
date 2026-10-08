import FourierPilotCircleTree004786
import FourierPilotCircleTree004827
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004785
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, true]
def state : State := ![12, 12, 13, 4, 10]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree004786.state FourierPilotCircleTree004827.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004786.covered FourierPilotCircleTree004827.covered
#print axioms covered
end FourierPilotCircleTree004785
