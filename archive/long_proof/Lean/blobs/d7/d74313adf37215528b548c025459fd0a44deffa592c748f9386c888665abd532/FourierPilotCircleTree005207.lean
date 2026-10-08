import FourierPilotCircleTree005208
import FourierPilotCircleTree005209
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005207
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, true]
def state : State := ![9, 24, 8, 26, 8]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree005208.state FourierPilotCircleTree005209.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005208.covered FourierPilotCircleTree005209.covered
#print axioms covered
end FourierPilotCircleTree005207
