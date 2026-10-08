import FourierPilotCircleTree003231
import FourierPilotCircleTree003232
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003230
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, true]
def state : State := ![9, 24, 8, 26, 15]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree003231.state FourierPilotCircleTree003232.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003231.covered FourierPilotCircleTree003232.covered
#print axioms covered
end FourierPilotCircleTree003230
