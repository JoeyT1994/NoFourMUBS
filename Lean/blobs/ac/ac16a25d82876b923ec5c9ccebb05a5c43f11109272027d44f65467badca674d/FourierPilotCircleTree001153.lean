import FourierPilotCircleTree001154
import FourierPilotCircleTree001155
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001153
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![9, 14, 7, 11, 12]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree001154.state FourierPilotCircleTree001155.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001154.covered FourierPilotCircleTree001155.covered
#print axioms covered
end FourierPilotCircleTree001153
