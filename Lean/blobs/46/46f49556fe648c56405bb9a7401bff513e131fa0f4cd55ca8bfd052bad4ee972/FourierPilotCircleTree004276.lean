import FourierPilotCircleTree004277
import FourierPilotCircleTree004278
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004276
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, true]
def state : State := ![4, 7, 13, 6, 6]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree004277.state FourierPilotCircleTree004278.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004277.covered FourierPilotCircleTree004278.covered
#print axioms covered
end FourierPilotCircleTree004276
