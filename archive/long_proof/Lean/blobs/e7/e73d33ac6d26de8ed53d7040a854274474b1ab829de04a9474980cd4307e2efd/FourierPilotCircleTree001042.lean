import FourierPilotCircleTree001043
import FourierPilotCircleTree001044
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001042
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, false]
def state : State := ![77, 77, 127, 104, 104]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree001043.state FourierPilotCircleTree001044.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001043.covered FourierPilotCircleTree001044.covered
#print axioms covered
end FourierPilotCircleTree001042
