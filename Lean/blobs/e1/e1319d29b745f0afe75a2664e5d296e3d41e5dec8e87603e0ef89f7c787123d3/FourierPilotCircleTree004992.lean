import FourierPilotCircleTree004993
import FourierPilotCircleTree004994
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004992
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, true]
def state : State := ![25, 24, 13, 10, 8]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree004993.state FourierPilotCircleTree004994.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004993.covered FourierPilotCircleTree004994.covered
#print axioms covered
end FourierPilotCircleTree004992
