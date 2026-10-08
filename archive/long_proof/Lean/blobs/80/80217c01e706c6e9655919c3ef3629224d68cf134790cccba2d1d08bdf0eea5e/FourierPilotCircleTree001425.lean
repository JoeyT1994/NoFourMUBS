import FourierPilotCircleTree001426
import FourierPilotCircleTree001427
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001425
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, false]
def state : State := ![19, 23, 15, 26, 15]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree001426.state FourierPilotCircleTree001427.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001426.covered FourierPilotCircleTree001427.covered
#print axioms covered
end FourierPilotCircleTree001425
