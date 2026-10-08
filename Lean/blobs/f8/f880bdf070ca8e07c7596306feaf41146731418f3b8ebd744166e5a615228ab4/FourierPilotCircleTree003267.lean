import FourierPilotCircleTree003268
import FourierPilotCircleTree003269
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003267
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, true]
def state : State := ![14, 23, 15, 10, 8]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree003268.state FourierPilotCircleTree003269.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003268.covered FourierPilotCircleTree003269.covered
#print axioms covered
end FourierPilotCircleTree003267
