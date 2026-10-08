import FourierPilotCircleTree004455
import FourierPilotCircleTree004462
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004454
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, true]
def state : State := ![2, 2, 3, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree004455.state FourierPilotCircleTree004462.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004455.covered FourierPilotCircleTree004462.covered
#print axioms covered
end FourierPilotCircleTree004454
