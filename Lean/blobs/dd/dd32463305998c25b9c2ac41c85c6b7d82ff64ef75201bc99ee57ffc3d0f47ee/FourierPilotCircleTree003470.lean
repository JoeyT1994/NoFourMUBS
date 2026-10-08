import FourierPilotCircleTree003471
import FourierPilotCircleTree003472
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003470
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, true]
def state : State := ![3, 2, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree003471.state FourierPilotCircleTree003472.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003471.covered FourierPilotCircleTree003472.covered
#print axioms covered
end FourierPilotCircleTree003470
