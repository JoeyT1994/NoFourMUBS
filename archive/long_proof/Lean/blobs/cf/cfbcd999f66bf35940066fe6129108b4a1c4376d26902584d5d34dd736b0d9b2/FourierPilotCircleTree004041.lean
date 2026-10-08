import FourierPilotCircleTree004042
import FourierPilotCircleTree004043
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004041
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, true]
def state : State := ![38, 47, 31, 52, 31]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree004042.state FourierPilotCircleTree004043.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004042.covered FourierPilotCircleTree004043.covered
#print axioms covered
end FourierPilotCircleTree004041
