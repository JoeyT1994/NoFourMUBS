import FourierPilotCircleTree004243
import FourierPilotCircleTree004264
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004242
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, true]
def state : State := ![5, 7, 7, 2, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree004243.state FourierPilotCircleTree004264.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004243.covered FourierPilotCircleTree004264.covered
#print axioms covered
end FourierPilotCircleTree004242
