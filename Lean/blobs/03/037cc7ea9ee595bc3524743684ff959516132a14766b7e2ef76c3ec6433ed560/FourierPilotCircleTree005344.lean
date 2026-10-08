import FourierPilotCircleTree005345
import FourierPilotCircleTree005346
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005344
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, true]
def state : State := ![14, 11, 15, 10, 15]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree005345.state FourierPilotCircleTree005346.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005345.covered FourierPilotCircleTree005346.covered
#print axioms covered
end FourierPilotCircleTree005344
