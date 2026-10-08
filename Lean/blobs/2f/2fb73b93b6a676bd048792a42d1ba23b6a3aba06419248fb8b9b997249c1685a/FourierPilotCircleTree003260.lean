import FourierPilotCircleTree003261
import FourierPilotCircleTree003276
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003260
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, true]
def state : State := ![7, 11, 7, 5, 4]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree003261.state FourierPilotCircleTree003276.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003261.covered FourierPilotCircleTree003276.covered
#print axioms covered
end FourierPilotCircleTree003260
