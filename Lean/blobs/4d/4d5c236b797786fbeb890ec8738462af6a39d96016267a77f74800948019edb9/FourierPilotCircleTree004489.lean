import FourierPilotCircleTree004490
import FourierPilotCircleTree004491
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004489
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, true]
def state : State := ![46, 24, 16, 26, 21]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree004490.state FourierPilotCircleTree004491.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004490.covered FourierPilotCircleTree004491.covered
#print axioms covered
end FourierPilotCircleTree004489
