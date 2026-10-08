import FourierPilotCircleTree001186
import FourierPilotCircleTree001187
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001185
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![4, 6, 7, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree001186.state FourierPilotCircleTree001187.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001186.covered FourierPilotCircleTree001187.covered
#print axioms covered
end FourierPilotCircleTree001185
