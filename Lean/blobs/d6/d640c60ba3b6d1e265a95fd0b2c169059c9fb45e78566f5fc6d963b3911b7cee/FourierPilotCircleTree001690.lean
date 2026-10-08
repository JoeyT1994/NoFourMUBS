import FourierPilotCircleTree001691
import FourierPilotCircleTree001724
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001690
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, false]
def state : State := ![10, 15, 13, 13, 13]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree001691.state FourierPilotCircleTree001724.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001691.covered FourierPilotCircleTree001724.covered
#print axioms covered
end FourierPilotCircleTree001690
