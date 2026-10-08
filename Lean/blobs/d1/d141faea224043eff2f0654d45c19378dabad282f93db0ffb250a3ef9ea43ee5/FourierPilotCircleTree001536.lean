import FourierPilotCircleTree001537
import FourierPilotCircleTree001538
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001536
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, false]
def state : State := ![54, 37, 20, 16, 51]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree001537.state FourierPilotCircleTree001538.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001537.covered FourierPilotCircleTree001538.covered
#print axioms covered
end FourierPilotCircleTree001536
