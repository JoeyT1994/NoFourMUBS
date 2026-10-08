import FourierPilotCircleTree004373
import FourierPilotCircleTree004374
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004372
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, true]
def state : State := ![55, 35, 40, 42, 43]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree004373.state FourierPilotCircleTree004374.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004373.covered FourierPilotCircleTree004374.covered
#print axioms covered
end FourierPilotCircleTree004372
