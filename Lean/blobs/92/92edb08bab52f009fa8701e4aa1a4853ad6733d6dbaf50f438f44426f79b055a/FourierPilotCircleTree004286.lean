import FourierPilotCircleTree004287
import FourierPilotCircleTree004336
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004286
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, true]
def state : State := ![5, 7, 3, 3, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree004287.state FourierPilotCircleTree004336.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004287.covered FourierPilotCircleTree004336.covered
#print axioms covered
end FourierPilotCircleTree004286
