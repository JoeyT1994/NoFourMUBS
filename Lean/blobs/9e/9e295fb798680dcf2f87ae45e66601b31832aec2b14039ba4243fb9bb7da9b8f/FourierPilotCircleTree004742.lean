import FourierPilotCircleTree004743
import FourierPilotCircleTree004750
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004742
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, true]
def state : State := ![3, 1, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree004743.state FourierPilotCircleTree004750.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004743.covered FourierPilotCircleTree004750.covered
#print axioms covered
end FourierPilotCircleTree004742
