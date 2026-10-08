import FourierPilotCircleTree001419
import FourierPilotCircleTree001420
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001418
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, false]
def state : State := ![9, 11, 15, 13, 7]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree001419.state FourierPilotCircleTree001420.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001419.covered FourierPilotCircleTree001420.covered
#print axioms covered
end FourierPilotCircleTree001418
