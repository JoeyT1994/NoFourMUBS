import FourierPilotCircleTree001517
import FourierPilotCircleTree001554
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001516
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, false]
def state : State := ![6, 4, 5, 4, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree001517.state FourierPilotCircleTree001554.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001517.covered FourierPilotCircleTree001554.covered
#print axioms covered
end FourierPilotCircleTree001516
