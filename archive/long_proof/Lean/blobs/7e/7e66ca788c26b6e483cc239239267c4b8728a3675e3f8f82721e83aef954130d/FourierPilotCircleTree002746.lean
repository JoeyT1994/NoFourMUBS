import FourierPilotCircleTree002747
import FourierPilotCircleTree002748
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002746
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, false]
def state : State := ![11, 12, 15, 13, 10]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree002747.state FourierPilotCircleTree002748.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002747.covered FourierPilotCircleTree002748.covered
#print axioms covered
end FourierPilotCircleTree002746
