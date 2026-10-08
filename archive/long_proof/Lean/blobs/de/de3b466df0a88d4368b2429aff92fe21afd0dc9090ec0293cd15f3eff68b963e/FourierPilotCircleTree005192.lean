import FourierPilotCircleTree005193
import FourierPilotCircleTree005234
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005192
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, true]
def state : State := ![2, 3, 2, 3, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree005193.state FourierPilotCircleTree005234.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005193.covered FourierPilotCircleTree005234.covered
#print axioms covered
end FourierPilotCircleTree005192
