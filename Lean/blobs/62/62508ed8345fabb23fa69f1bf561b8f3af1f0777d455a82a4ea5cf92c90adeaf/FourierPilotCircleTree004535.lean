import FourierPilotCircleTree004536
import FourierPilotCircleTree004579
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004535
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, true]
def state : State := ![6, 5, 7, 5, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree004536.state FourierPilotCircleTree004579.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004536.covered FourierPilotCircleTree004579.covered
#print axioms covered
end FourierPilotCircleTree004535
