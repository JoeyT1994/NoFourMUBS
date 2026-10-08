import FourierPilotCircleTree001148
import FourierPilotCircleTree001149
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001147
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![4, 7, 7, 5, 6]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree001148.state FourierPilotCircleTree001149.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001148.covered FourierPilotCircleTree001149.covered
#print axioms covered
end FourierPilotCircleTree001147
