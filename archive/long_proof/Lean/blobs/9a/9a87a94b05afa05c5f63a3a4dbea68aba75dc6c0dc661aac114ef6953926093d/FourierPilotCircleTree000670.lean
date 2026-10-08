import FourierPilotCircleTree000671
import FourierPilotCircleTree000680
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000670
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, false]
def state : State := ![4, 5, 7, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree000671.state FourierPilotCircleTree000680.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000671.covered FourierPilotCircleTree000680.covered
#print axioms covered
end FourierPilotCircleTree000670
