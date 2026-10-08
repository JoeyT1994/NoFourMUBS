import FourierPilotCircleTree004830
import FourierPilotCircleTree004833
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004829
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, true]
def state : State := ![12, 12, 13, 8, 11]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree004830.state FourierPilotCircleTree004833.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004830.covered FourierPilotCircleTree004833.covered
#print axioms covered
end FourierPilotCircleTree004829
