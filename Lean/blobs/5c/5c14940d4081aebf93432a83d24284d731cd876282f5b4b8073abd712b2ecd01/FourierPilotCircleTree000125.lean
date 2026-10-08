import FourierPilotCircleTree000126
import FourierPilotCircleTree000127
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000125
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, false]
def state : State := ![13, 9, 10, 15, 12]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree000126.state FourierPilotCircleTree000127.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000126.covered FourierPilotCircleTree000127.covered
#print axioms covered
end FourierPilotCircleTree000125
