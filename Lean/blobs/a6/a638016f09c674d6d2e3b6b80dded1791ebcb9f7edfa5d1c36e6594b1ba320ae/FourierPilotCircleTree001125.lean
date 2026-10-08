import FourierPilotCircleTree001126
import FourierPilotCircleTree001127
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001125
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![2, 2, 3, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree001126.state FourierPilotCircleTree001127.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001126.covered FourierPilotCircleTree001127.covered
#print axioms covered
end FourierPilotCircleTree001125
