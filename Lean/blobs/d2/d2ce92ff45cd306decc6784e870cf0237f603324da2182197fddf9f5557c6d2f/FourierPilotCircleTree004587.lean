import FourierPilotCircleTree004588
import FourierPilotCircleTree004589
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004587
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, true]
def state : State := ![6, 3, 2, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree004588.state FourierPilotCircleTree004589.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004588.covered FourierPilotCircleTree004589.covered
#print axioms covered
end FourierPilotCircleTree004587
