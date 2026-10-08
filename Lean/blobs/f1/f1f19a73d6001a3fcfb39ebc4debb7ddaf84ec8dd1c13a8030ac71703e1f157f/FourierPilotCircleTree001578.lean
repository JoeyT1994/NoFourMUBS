import FourierPilotCircleTree001579
import FourierPilotCircleTree001600
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001578
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, false]
def state : State := ![14, 24, 8, 21, 8]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree001579.state FourierPilotCircleTree001600.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001579.covered FourierPilotCircleTree001600.covered
#print axioms covered
end FourierPilotCircleTree001578
