import FourierPilotCircleTree004120
import FourierPilotCircleTree004165
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004119
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, true]
def state : State := ![3, 2, 2, 2, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree004120.state FourierPilotCircleTree004165.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004120.covered FourierPilotCircleTree004165.covered
#print axioms covered
end FourierPilotCircleTree004119
