import FourierPilotCircleTree004145
import FourierPilotCircleTree004146
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004144
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, true]
def state : State := ![54, 37, 20, 16, 51]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree004145.state FourierPilotCircleTree004146.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004145.covered FourierPilotCircleTree004146.covered
#print axioms covered
end FourierPilotCircleTree004144
