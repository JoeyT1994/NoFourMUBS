import FourierPilotCircleTree001183
import FourierPilotCircleTree001204
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001182
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![4, 3, 3, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree001183.state FourierPilotCircleTree001204.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001183.covered FourierPilotCircleTree001204.covered
#print axioms covered
end FourierPilotCircleTree001182
