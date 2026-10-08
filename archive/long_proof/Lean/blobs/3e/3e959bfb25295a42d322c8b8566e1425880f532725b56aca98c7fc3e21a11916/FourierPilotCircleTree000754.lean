import FourierPilotCircleTree000755
import FourierPilotCircleTree000756
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000754
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, false]
def state : State := ![98, 100, 54, 34, 43]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree000755.state FourierPilotCircleTree000756.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000755.covered FourierPilotCircleTree000756.covered
#print axioms covered
end FourierPilotCircleTree000754
