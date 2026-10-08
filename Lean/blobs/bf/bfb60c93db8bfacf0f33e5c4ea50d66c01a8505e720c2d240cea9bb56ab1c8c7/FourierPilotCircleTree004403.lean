import FourierPilotCircleTree004404
import FourierPilotCircleTree004407
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004403
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, true]
def state : State := ![7, 4, 10, 5, 5]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree004404.state FourierPilotCircleTree004407.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004404.covered FourierPilotCircleTree004407.covered
#print axioms covered
end FourierPilotCircleTree004403
