import FourierPilotCircleTree003302
import FourierPilotCircleTree003303
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003301
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, true]
def state : State := ![7, 10, 6, 6, 6]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree003302.state FourierPilotCircleTree003303.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003302.covered FourierPilotCircleTree003303.covered
#print axioms covered
end FourierPilotCircleTree003301
