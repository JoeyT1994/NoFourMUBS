import FourierPilotCircleTree004312
import FourierPilotCircleTree004313
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004311
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, true]
def state : State := ![40, 60, 54, 53, 104]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree004312.state FourierPilotCircleTree004313.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004312.covered FourierPilotCircleTree004313.covered
#print axioms covered
end FourierPilotCircleTree004311
