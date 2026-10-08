import FourierPilotCircleTree005129
import FourierPilotCircleTree005162
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005128
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, true, true]
def state : State := ![14, 14, 4, 10, 10]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree005129.state FourierPilotCircleTree005162.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005129.covered FourierPilotCircleTree005162.covered
#print axioms covered
end FourierPilotCircleTree005128
