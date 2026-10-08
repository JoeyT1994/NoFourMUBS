import FourierPilotCircleTree005672
import FourierPilotCircleTree005707
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005671
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, true]
def state : State := ![14, 7, 7, 10, 10]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree005672.state FourierPilotCircleTree005707.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005672.covered FourierPilotCircleTree005707.covered
#print axioms covered
end FourierPilotCircleTree005671
