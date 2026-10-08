import FourierPilotCircleTree004551
import FourierPilotCircleTree004552
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004550
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, true]
def state : State := ![24, 23, 15, 21, 26]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree004551.state FourierPilotCircleTree004552.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004551.covered FourierPilotCircleTree004552.covered
#print axioms covered
end FourierPilotCircleTree004550
