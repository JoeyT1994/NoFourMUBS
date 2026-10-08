import FourierPilotCircleTree005244
import FourierPilotCircleTree005245
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005243
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, true]
def state : State := ![5, 7, 6, 4, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree005244.state FourierPilotCircleTree005245.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005244.covered FourierPilotCircleTree005245.covered
#print axioms covered
end FourierPilotCircleTree005243
