import FourierPilotCircleTree004803
import FourierPilotCircleTree004818
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004802
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, true]
def state : State := ![49, 50, 27, 17, 43]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree004803.state FourierPilotCircleTree004818.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004803.covered FourierPilotCircleTree004818.covered
#print axioms covered
end FourierPilotCircleTree004802
