import FourierPilotCircleTree005290
import FourierPilotCircleTree005291
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005289
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, true]
def state : State := ![6, 4, 5, 7, 6]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree005290.state FourierPilotCircleTree005291.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005290.covered FourierPilotCircleTree005291.covered
#print axioms covered
end FourierPilotCircleTree005289
