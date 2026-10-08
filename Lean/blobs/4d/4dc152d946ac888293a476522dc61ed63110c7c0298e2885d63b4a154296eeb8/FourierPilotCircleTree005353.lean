import FourierPilotCircleTree005354
import FourierPilotCircleTree005355
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005353
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, true]
def state : State := ![28, 23, 31, 21, 31]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree005354.state FourierPilotCircleTree005355.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005354.covered FourierPilotCircleTree005355.covered
#print axioms covered
end FourierPilotCircleTree005353
