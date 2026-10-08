import FourierPilotCircleTree001750
import FourierPilotCircleTree001781
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001749
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, false]
def state : State := ![27, 8, 10, 10, 10]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree001750.state FourierPilotCircleTree001781.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001750.covered FourierPilotCircleTree001781.covered
#print axioms covered
end FourierPilotCircleTree001749
