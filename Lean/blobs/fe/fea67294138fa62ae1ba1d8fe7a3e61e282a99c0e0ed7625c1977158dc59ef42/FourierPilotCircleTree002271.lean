import FourierPilotCircleTree002272
import FourierPilotCircleTree002339
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002271
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, false]
def state : State := ![2, 3, 2, 2, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree002272.state FourierPilotCircleTree002339.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002272.covered FourierPilotCircleTree002339.covered
#print axioms covered
end FourierPilotCircleTree002271
