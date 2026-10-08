import FourierPilotCircleTree000305
import FourierPilotCircleTree000306
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000304
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, false]
def state : State := ![12, 4, 4, 4, 6]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree000305.state FourierPilotCircleTree000306.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000305.covered FourierPilotCircleTree000306.covered
#print axioms covered
end FourierPilotCircleTree000304
