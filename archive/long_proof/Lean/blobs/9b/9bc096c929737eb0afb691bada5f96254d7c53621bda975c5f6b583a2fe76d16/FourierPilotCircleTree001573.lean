import FourierPilotCircleTree001574
import FourierPilotCircleTree001603
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001573
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, false]
def state : State := ![14, 12, 4, 10, 4]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree001574.state FourierPilotCircleTree001603.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001574.covered FourierPilotCircleTree001603.covered
#print axioms covered
end FourierPilotCircleTree001573
