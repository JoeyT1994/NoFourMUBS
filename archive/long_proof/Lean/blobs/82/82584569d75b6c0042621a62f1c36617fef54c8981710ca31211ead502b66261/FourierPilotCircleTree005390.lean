import FourierPilotCircleTree005391
import FourierPilotCircleTree005392
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005390
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, true]
def state : State := ![4, 6, 5, 6, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree005391.state FourierPilotCircleTree005392.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005391.covered FourierPilotCircleTree005392.covered
#print axioms covered
end FourierPilotCircleTree005390
