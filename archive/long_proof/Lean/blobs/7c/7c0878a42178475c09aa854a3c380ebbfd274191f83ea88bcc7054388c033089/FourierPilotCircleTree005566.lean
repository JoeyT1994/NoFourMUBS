import FourierPilotCircleTree005567
import FourierPilotCircleTree005616
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005566
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, true]
def state : State := ![4, 2, 2, 3, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree005567.state FourierPilotCircleTree005616.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005567.covered FourierPilotCircleTree005616.covered
#print axioms covered
end FourierPilotCircleTree005566
