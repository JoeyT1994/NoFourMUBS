import FourierPilotCircleTree004272
import FourierPilotCircleTree004283
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004271
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, true]
def state : State := ![4, 7, 3, 3, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree004272.state FourierPilotCircleTree004283.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004272.covered FourierPilotCircleTree004283.covered
#print axioms covered
end FourierPilotCircleTree004271
