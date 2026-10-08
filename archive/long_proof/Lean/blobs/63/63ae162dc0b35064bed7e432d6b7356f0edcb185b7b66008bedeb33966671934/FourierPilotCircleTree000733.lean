import FourierPilotCircleTree000734
import FourierPilotCircleTree000775
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000733
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, false]
def state : State := ![12, 12, 13, 4, 10]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree000734.state FourierPilotCircleTree000775.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000734.covered FourierPilotCircleTree000775.covered
#print axioms covered
end FourierPilotCircleTree000733
