import FourierPilotCircleTree001233
import FourierPilotCircleTree001248
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001232
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![40, 55, 31, 61, 17]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree001233.state FourierPilotCircleTree001248.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001233.covered FourierPilotCircleTree001248.covered
#print axioms covered
end FourierPilotCircleTree001232
