import FourierPilotCircleTree001134
import FourierPilotCircleTree001135
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001133
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![2, 3, 2, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree001134.state FourierPilotCircleTree001135.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001134.covered FourierPilotCircleTree001135.covered
#print axioms covered
end FourierPilotCircleTree001133
