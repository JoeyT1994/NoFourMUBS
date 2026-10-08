import FourierPilotCircleTree004063
import FourierPilotCircleTree004064
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004062
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, true]
def state : State := ![2, 3, 3, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree004063.state FourierPilotCircleTree004064.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004063.covered FourierPilotCircleTree004064.covered
#print axioms covered
end FourierPilotCircleTree004062
