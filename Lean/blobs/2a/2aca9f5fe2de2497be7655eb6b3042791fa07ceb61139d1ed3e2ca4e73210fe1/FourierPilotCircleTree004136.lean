import FourierPilotCircleTree004137
import FourierPilotCircleTree004158
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004136
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, true]
def state : State := ![27, 9, 10, 8, 25]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree004137.state FourierPilotCircleTree004158.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004137.covered FourierPilotCircleTree004158.covered
#print axioms covered
end FourierPilotCircleTree004136
