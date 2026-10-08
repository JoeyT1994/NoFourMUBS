import FourierPilotCircleTree000838
import FourierPilotCircleTree000839
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000837
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, false]
def state : State := ![45, 93, 40, 52, 61]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree000838.state FourierPilotCircleTree000839.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000838.covered FourierPilotCircleTree000839.covered
#print axioms covered
end FourierPilotCircleTree000837
