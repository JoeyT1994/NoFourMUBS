import FourierPilotCircleTree001975
import FourierPilotCircleTree001984
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001974
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, true, false]
def state : State := ![3, 3, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree001975.state FourierPilotCircleTree001984.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001975.covered FourierPilotCircleTree001984.covered
#print axioms covered
end FourierPilotCircleTree001974
