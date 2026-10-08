import FourierPilotCircleTree000706
import FourierPilotCircleTree000717
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000705
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, false]
def state : State := ![7, 6, 2, 2, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree000706.state FourierPilotCircleTree000717.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000706.covered FourierPilotCircleTree000717.covered
#print axioms covered
end FourierPilotCircleTree000705
