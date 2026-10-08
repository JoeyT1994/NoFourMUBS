import FourierPilotCircleTree001706
import FourierPilotCircleTree001711
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001705
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, false]
def state : State := ![40, 60, 54, 107, 104]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree001706.state FourierPilotCircleTree001711.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001706.covered FourierPilotCircleTree001711.covered
#print axioms covered
end FourierPilotCircleTree001705
