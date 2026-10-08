import FourierPilotCircleTree005051
import FourierPilotCircleTree005052
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005050
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, true, true]
def state : State := ![2, 2, 3, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree005051.state FourierPilotCircleTree005052.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005051.covered FourierPilotCircleTree005052.covered
#print axioms covered
end FourierPilotCircleTree005050
