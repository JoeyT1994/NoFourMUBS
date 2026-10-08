import FourierPilotCircleTree000735
import FourierPilotCircleTree000774
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000734
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, false]
def state : State := ![12, 12, 13, 8, 10]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree000735.state FourierPilotCircleTree000774.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000735.covered FourierPilotCircleTree000774.covered
#print axioms covered
end FourierPilotCircleTree000734
