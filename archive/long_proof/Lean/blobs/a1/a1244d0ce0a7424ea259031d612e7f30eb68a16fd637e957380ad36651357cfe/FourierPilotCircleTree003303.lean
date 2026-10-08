import FourierPilotCircleTree003304
import FourierPilotCircleTree003305
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003303
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, true]
def state : State := ![7, 10, 13, 6, 6]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree003304.state FourierPilotCircleTree003305.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003304.covered FourierPilotCircleTree003305.covered
#print axioms covered
end FourierPilotCircleTree003303
