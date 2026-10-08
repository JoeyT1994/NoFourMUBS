import FourierPilotCircleTree001618
import FourierPilotCircleTree001623
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001617
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, false]
def state : State := ![2, 2, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree001618.state FourierPilotCircleTree001623.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001618.covered FourierPilotCircleTree001623.covered
#print axioms covered
end FourierPilotCircleTree001617
