import FourierPilotCircleTree004430
import FourierPilotCircleTree004431
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004429
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, true]
def state : State := ![24, 9, 8, 15, 26]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree004430.state FourierPilotCircleTree004431.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004430.covered FourierPilotCircleTree004431.covered
#print axioms covered
end FourierPilotCircleTree004429
