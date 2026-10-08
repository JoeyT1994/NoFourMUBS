import FourierPilotCircleTree001886
import FourierPilotCircleTree001901
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001885
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, true, false]
def state : State := ![46, 49, 16, 53, 21]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree001886.state FourierPilotCircleTree001901.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001886.covered FourierPilotCircleTree001901.covered
#print axioms covered
end FourierPilotCircleTree001885
