import FourierPilotCircleTree005194
import FourierPilotCircleTree005229
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005193
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, true]
def state : State := ![2, 3, 2, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree005194.state FourierPilotCircleTree005229.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005194.covered FourierPilotCircleTree005229.covered
#print axioms covered
end FourierPilotCircleTree005193
