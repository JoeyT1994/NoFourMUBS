import FourierPilotCircleTree004191
import FourierPilotCircleTree004192
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004190
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, true]
def state : State := ![28, 48, 16, 21, 16]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree004191.state FourierPilotCircleTree004192.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004191.covered FourierPilotCircleTree004192.covered
#print axioms covered
end FourierPilotCircleTree004190
