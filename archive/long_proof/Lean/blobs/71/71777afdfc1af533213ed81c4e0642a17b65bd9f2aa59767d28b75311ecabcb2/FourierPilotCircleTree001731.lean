import FourierPilotCircleTree001732
import FourierPilotCircleTree001803
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001731
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, false]
def state : State := ![3, 2, 2, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree001732.state FourierPilotCircleTree001803.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001732.covered FourierPilotCircleTree001803.covered
#print axioms covered
end FourierPilotCircleTree001731
