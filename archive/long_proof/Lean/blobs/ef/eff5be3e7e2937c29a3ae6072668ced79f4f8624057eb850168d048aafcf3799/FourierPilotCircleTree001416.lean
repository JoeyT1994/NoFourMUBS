import FourierPilotCircleTree001417
import FourierPilotCircleTree001418
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001416
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, false]
def state : State := ![9, 11, 7, 13, 7]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree001417.state FourierPilotCircleTree001418.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001417.covered FourierPilotCircleTree001418.covered
#print axioms covered
end FourierPilotCircleTree001416
