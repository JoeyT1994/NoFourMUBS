import FourierPilotCircleTree004095
import FourierPilotCircleTree004096
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004094
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, true]
def state : State := ![41, 58, 54, 63, 44]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree004095.state FourierPilotCircleTree004096.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004095.covered FourierPilotCircleTree004096.covered
#print axioms covered
end FourierPilotCircleTree004094
