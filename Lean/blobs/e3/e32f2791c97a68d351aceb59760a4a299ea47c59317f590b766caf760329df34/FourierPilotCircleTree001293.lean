import FourierPilotCircleTree001294
import FourierPilotCircleTree001301
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001293
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![111, 80, 32, 34, 61]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree001294.state FourierPilotCircleTree001301.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001294.covered FourierPilotCircleTree001301.covered
#print axioms covered
end FourierPilotCircleTree001293
