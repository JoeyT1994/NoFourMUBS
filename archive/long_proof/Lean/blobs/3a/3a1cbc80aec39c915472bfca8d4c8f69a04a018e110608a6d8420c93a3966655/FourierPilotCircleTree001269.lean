import FourierPilotCircleTree001270
import FourierPilotCircleTree001271
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001269
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![6, 5, 4, 4, 7]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree001270.state FourierPilotCircleTree001271.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001270.covered FourierPilotCircleTree001271.covered
#print axioms covered
end FourierPilotCircleTree001269
