import FourierPilotCircleTree001683
import FourierPilotCircleTree001684
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001682
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, false]
def state : State := ![10, 7, 6, 6, 6]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree001683.state FourierPilotCircleTree001684.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001683.covered FourierPilotCircleTree001684.covered
#print axioms covered
end FourierPilotCircleTree001682
