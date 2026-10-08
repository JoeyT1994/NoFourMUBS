import FourierPilotCircleTree004073
import FourierPilotCircleTree004074
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004072
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, true]
def state : State := ![10, 7, 6, 7, 5]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree004073.state FourierPilotCircleTree004074.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004073.covered FourierPilotCircleTree004074.covered
#print axioms covered
end FourierPilotCircleTree004072
