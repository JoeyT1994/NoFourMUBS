import FourierPilotCircleTree005246
import FourierPilotCircleTree005271
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005245
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, true]
def state : State := ![5, 7, 6, 4, 5]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree005246.state FourierPilotCircleTree005271.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005246.covered FourierPilotCircleTree005271.covered
#print axioms covered
end FourierPilotCircleTree005245
