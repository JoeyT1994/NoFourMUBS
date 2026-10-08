import FourierPilotCircleTree003202
import FourierPilotCircleTree003203
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003201
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, true]
def state : State := ![4, 7, 5, 5, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree003202.state FourierPilotCircleTree003203.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003202.covered FourierPilotCircleTree003203.covered
#print axioms covered
end FourierPilotCircleTree003201
