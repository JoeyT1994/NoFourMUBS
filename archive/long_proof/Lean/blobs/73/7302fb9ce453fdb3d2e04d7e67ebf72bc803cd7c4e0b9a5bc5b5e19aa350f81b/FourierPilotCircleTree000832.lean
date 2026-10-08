import FourierPilotCircleTree000833
import FourierPilotCircleTree000840
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000832
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, false]
def state : State := ![45, 46, 20, 52, 30]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree000833.state FourierPilotCircleTree000840.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000833.covered FourierPilotCircleTree000840.covered
#print axioms covered
end FourierPilotCircleTree000832
