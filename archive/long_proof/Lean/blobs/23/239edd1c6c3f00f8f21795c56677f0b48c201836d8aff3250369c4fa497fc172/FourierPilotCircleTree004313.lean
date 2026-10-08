import FourierPilotCircleTree004314
import FourierPilotCircleTree004319
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004313
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, true]
def state : State := ![40, 60, 54, 107, 104]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree004314.state FourierPilotCircleTree004319.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004314.covered FourierPilotCircleTree004319.covered
#print axioms covered
end FourierPilotCircleTree004313
