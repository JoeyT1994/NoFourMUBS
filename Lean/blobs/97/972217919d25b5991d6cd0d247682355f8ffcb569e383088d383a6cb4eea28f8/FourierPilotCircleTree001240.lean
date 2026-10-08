import FourierPilotCircleTree001241
import FourierPilotCircleTree001246
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001240
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![80, 111, 63, 123, 34]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree001241.state FourierPilotCircleTree001246.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001241.covered FourierPilotCircleTree001246.covered
#print axioms covered
end FourierPilotCircleTree001240
