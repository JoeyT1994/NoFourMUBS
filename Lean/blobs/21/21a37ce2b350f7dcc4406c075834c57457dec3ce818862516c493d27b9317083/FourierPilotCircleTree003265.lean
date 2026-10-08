import FourierPilotCircleTree003266
import FourierPilotCircleTree003267
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003265
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, true]
def state : State := ![14, 11, 15, 10, 8]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree003266.state FourierPilotCircleTree003267.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003266.covered FourierPilotCircleTree003267.covered
#print axioms covered
end FourierPilotCircleTree003265
