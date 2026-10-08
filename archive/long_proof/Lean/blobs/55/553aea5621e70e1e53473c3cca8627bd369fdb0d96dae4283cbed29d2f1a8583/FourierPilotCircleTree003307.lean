import FourierPilotCircleTree003308
import FourierPilotCircleTree003309
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003307
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, true]
def state : State := ![7, 10, 13, 13, 13]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree003308.state FourierPilotCircleTree003309.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003308.covered FourierPilotCircleTree003309.covered
#print axioms covered
end FourierPilotCircleTree003307
