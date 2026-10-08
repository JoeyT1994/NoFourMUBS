import FourierPilotCircleTree004537
import FourierPilotCircleTree004578
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004536
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, true]
def state : State := ![6, 5, 7, 5, 6]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree004537.state FourierPilotCircleTree004578.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004537.covered FourierPilotCircleTree004578.covered
#print axioms covered
end FourierPilotCircleTree004536
