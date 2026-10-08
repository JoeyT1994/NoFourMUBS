import FourierPilotCircleTree005207
import FourierPilotCircleTree005220
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005206
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, true]
def state : State := ![9, 24, 8, 13, 8]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree005207.state FourierPilotCircleTree005220.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005207.covered FourierPilotCircleTree005220.covered
#print axioms covered
end FourierPilotCircleTree005206
