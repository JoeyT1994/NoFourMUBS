import FourierPilotCircleTree001275
import FourierPilotCircleTree001276
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001274
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![13, 10, 8, 8, 7]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree001275.state FourierPilotCircleTree001276.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001275.covered FourierPilotCircleTree001276.covered
#print axioms covered
end FourierPilotCircleTree001274
