import FourierPilotCircleTree000354
import FourierPilotCircleTree000373
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000353
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, false]
def state : State := ![7, 10, 13, 11, 4]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree000354.state FourierPilotCircleTree000373.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000354.covered FourierPilotCircleTree000373.covered
#print axioms covered
end FourierPilotCircleTree000353
