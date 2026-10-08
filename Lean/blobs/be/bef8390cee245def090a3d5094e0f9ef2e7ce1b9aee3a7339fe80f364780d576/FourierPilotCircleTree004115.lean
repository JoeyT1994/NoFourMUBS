import FourierPilotCircleTree004116
import FourierPilotCircleTree004119
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004115
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, true]
def state : State := ![3, 2, 2, 2, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree004116.state FourierPilotCircleTree004119.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004116.covered FourierPilotCircleTree004119.covered
#print axioms covered
end FourierPilotCircleTree004115
