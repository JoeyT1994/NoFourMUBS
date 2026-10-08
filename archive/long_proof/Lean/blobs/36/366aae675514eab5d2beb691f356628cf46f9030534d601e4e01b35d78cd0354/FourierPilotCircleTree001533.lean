import FourierPilotCircleTree001534
import FourierPilotCircleTree001535
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001533
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, false]
def state : State := ![27, 18, 20, 16, 51]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree001534.state FourierPilotCircleTree001535.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001534.covered FourierPilotCircleTree001535.covered
#print axioms covered
end FourierPilotCircleTree001533
