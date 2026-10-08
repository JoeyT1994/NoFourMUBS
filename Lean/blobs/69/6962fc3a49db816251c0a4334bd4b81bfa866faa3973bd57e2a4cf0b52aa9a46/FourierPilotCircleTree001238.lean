import FourierPilotCircleTree001239
import FourierPilotCircleTree001240
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001238
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![80, 111, 63, 61, 34]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree001239.state FourierPilotCircleTree001240.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001239.covered FourierPilotCircleTree001240.covered
#print axioms covered
end FourierPilotCircleTree001238
