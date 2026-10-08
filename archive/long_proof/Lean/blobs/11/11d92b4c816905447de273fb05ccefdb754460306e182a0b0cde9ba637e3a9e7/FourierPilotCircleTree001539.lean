import FourierPilotCircleTree001540
import FourierPilotCircleTree001545
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001539
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, false]
def state : State := ![54, 37, 41, 32, 51]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree001540.state FourierPilotCircleTree001545.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001540.covered FourierPilotCircleTree001545.covered
#print axioms covered
end FourierPilotCircleTree001539
