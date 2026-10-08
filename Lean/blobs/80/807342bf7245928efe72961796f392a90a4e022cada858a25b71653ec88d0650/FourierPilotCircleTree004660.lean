import FourierPilotCircleTree004661
import FourierPilotCircleTree004712
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004660
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, true]
def state : State := ![11, 11, 5, 7, 6]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree004661.state FourierPilotCircleTree004712.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004661.covered FourierPilotCircleTree004712.covered
#print axioms covered
end FourierPilotCircleTree004660
