import FourierPilotCircleTree000600
import FourierPilotCircleTree000601
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000599
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, false]
def state : State := ![5, 5, 2, 3, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree000600.state FourierPilotCircleTree000601.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000600.covered FourierPilotCircleTree000601.covered
#print axioms covered
end FourierPilotCircleTree000599
