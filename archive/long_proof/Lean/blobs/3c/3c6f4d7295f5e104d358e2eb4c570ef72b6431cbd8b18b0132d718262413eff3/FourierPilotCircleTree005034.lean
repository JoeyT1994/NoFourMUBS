import FourierPilotCircleTree005035
import FourierPilotCircleTree005036
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005034
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, true]
def state : State := ![25, 12, 13, 11, 8]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree005035.state FourierPilotCircleTree005036.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005035.covered FourierPilotCircleTree005036.covered
#print axioms covered
end FourierPilotCircleTree005034
