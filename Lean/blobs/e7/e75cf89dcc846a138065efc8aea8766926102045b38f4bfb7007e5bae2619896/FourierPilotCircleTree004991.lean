import FourierPilotCircleTree004992
import FourierPilotCircleTree005029
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004991
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, true]
def state : State := ![25, 12, 13, 10, 8]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree004992.state FourierPilotCircleTree005029.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004992.covered FourierPilotCircleTree005029.covered
#print axioms covered
end FourierPilotCircleTree004991
