import FourierPilotCircleTree004176
import FourierPilotCircleTree004177
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004175
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, true]
def state : State := ![7, 6, 4, 2, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree004176.state FourierPilotCircleTree004177.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004176.covered FourierPilotCircleTree004177.covered
#print axioms covered
end FourierPilotCircleTree004175
