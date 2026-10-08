import FourierPilotCircleTree005243
import FourierPilotCircleTree005272
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005242
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, true]
def state : State := ![5, 7, 6, 2, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree005243.state FourierPilotCircleTree005272.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005243.covered FourierPilotCircleTree005272.covered
#print axioms covered
end FourierPilotCircleTree005242
