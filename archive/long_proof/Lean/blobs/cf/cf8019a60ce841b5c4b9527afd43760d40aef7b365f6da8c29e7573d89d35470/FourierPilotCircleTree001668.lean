import FourierPilotCircleTree001669
import FourierPilotCircleTree001670
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001668
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, false]
def state : State := ![4, 7, 13, 6, 6]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree001669.state FourierPilotCircleTree001670.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001669.covered FourierPilotCircleTree001670.covered
#print axioms covered
end FourierPilotCircleTree001668
