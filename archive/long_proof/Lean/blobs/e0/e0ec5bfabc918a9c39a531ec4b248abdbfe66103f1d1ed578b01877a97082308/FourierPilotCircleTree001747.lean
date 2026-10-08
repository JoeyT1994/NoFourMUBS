import FourierPilotCircleTree001748
import FourierPilotCircleTree001749
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001747
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, false]
def state : State := ![13, 8, 10, 10, 10]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree001748.state FourierPilotCircleTree001749.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001748.covered FourierPilotCircleTree001749.covered
#print axioms covered
end FourierPilotCircleTree001747
