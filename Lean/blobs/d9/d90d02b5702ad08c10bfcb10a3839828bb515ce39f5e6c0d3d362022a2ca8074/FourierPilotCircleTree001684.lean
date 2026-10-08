import FourierPilotCircleTree001685
import FourierPilotCircleTree001686
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001684
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, false]
def state : State := ![10, 7, 13, 6, 6]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree001685.state FourierPilotCircleTree001686.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001685.covered FourierPilotCircleTree001686.covered
#print axioms covered
end FourierPilotCircleTree001684
