import FourierPilotCircleTree001291
import FourierPilotCircleTree001292
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001290
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![55, 40, 32, 34, 61]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree001291.state FourierPilotCircleTree001292.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001291.covered FourierPilotCircleTree001292.covered
#print axioms covered
end FourierPilotCircleTree001290
