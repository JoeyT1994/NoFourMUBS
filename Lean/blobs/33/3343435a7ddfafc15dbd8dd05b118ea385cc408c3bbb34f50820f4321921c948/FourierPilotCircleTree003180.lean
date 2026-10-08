import FourierPilotCircleTree003181
import FourierPilotCircleTree003182
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003180
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, true]
def state : State := ![35, 55, 41, 43, 42]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree003181.state FourierPilotCircleTree003182.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003181.covered FourierPilotCircleTree003182.covered
#print axioms covered
end FourierPilotCircleTree003180
