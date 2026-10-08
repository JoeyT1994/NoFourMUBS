import FourierPilotCircleTree005426
import FourierPilotCircleTree005427
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005425
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, true]
def state : State := ![2, 3, 3, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree005426.state FourierPilotCircleTree005427.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005426.covered FourierPilotCircleTree005427.covered
#print axioms covered
end FourierPilotCircleTree005425
