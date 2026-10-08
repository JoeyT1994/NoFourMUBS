import FourierPilotCircleTree004759
import FourierPilotCircleTree004760
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004758
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, true]
def state : State := ![7, 6, 4, 2, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree004759.state FourierPilotCircleTree004760.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004759.covered FourierPilotCircleTree004760.covered
#print axioms covered
end FourierPilotCircleTree004758
