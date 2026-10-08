import FourierPilotCircleTree004805
import FourierPilotCircleTree004816
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004804
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, true]
def state : State := ![49, 50, 54, 34, 43]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree004805.state FourierPilotCircleTree004816.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004805.covered FourierPilotCircleTree004816.covered
#print axioms covered
end FourierPilotCircleTree004804
