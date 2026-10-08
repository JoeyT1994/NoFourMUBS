import FourierPilotCircleTree003282
import FourierPilotCircleTree003283
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003281
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, true]
def state : State := ![3, 2, 3, 3, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree003282.state FourierPilotCircleTree003283.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003282.covered FourierPilotCircleTree003283.covered
#print axioms covered
end FourierPilotCircleTree003281
