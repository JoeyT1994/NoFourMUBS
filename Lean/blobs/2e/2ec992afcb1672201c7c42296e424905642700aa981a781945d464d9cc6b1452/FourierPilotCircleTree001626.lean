import FourierPilotCircleTree001627
import FourierPilotCircleTree001658
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001626
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, false]
def state : State := ![2, 3, 3, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree001627.state FourierPilotCircleTree001658.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001627.covered FourierPilotCircleTree001658.covered
#print axioms covered
end FourierPilotCircleTree001626
