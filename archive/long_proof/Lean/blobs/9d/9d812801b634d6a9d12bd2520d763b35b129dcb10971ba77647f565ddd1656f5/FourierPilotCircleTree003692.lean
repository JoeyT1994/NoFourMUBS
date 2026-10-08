import FourierPilotCircleTree003693
import FourierPilotCircleTree003700
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003692
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, true]
def state : State := ![98, 93, 32, 42, 53]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree003693.state FourierPilotCircleTree003700.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003693.covered FourierPilotCircleTree003700.covered
#print axioms covered
end FourierPilotCircleTree003692
