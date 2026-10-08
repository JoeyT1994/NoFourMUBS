import FourierPilotCircleTree001274
import FourierPilotCircleTree001309
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001273
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![13, 10, 8, 4, 7]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree001274.state FourierPilotCircleTree001309.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001274.covered FourierPilotCircleTree001309.covered
#print axioms covered
end FourierPilotCircleTree001273
