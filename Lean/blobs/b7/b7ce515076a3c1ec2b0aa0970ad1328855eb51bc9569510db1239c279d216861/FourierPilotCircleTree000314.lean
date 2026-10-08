import FourierPilotCircleTree000315
import FourierPilotCircleTree000324
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000314
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, false]
def state : State := ![24, 19, 8, 8, 26]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree000315.state FourierPilotCircleTree000324.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000315.covered FourierPilotCircleTree000324.covered
#print axioms covered
end FourierPilotCircleTree000314
