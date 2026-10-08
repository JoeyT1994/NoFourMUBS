import FourierPilotCircleTree001318
import FourierPilotCircleTree001335
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001317
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![7, 5, 4, 2, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree001318.state FourierPilotCircleTree001335.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001318.covered FourierPilotCircleTree001335.covered
#print axioms covered
end FourierPilotCircleTree001317
