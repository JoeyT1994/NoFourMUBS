import FourierPilotCircleTree001195
import FourierPilotCircleTree001196
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001194
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![9, 13, 15, 7, 4]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree001195.state FourierPilotCircleTree001196.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001195.covered FourierPilotCircleTree001196.covered
#print axioms covered
end FourierPilotCircleTree001194
