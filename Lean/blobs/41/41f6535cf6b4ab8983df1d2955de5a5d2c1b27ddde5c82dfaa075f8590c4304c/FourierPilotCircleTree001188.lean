import FourierPilotCircleTree001189
import FourierPilotCircleTree001190
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001188
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![4, 6, 7, 7, 4]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree001189.state FourierPilotCircleTree001190.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001189.covered FourierPilotCircleTree001190.covered
#print axioms covered
end FourierPilotCircleTree001188
