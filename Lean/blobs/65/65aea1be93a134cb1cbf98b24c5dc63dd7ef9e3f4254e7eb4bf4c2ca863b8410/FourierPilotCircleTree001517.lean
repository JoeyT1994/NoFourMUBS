import FourierPilotCircleTree001518
import FourierPilotCircleTree001519
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001517
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, false]
def state : State := ![6, 4, 5, 4, 6]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree001518.state FourierPilotCircleTree001519.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001518.covered FourierPilotCircleTree001519.covered
#print axioms covered
end FourierPilotCircleTree001517
