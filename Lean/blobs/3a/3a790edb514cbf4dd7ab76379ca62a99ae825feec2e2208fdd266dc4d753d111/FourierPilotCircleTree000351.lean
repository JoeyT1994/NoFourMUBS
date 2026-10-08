import FourierPilotCircleTree000352
import FourierPilotCircleTree000353
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000351
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, false]
def state : State := ![7, 10, 13, 5, 4]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree000352.state FourierPilotCircleTree000353.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000352.covered FourierPilotCircleTree000353.covered
#print axioms covered
end FourierPilotCircleTree000351
