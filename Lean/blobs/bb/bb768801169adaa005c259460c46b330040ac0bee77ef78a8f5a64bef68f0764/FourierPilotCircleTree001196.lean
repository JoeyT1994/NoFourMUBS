import FourierPilotCircleTree001197
import FourierPilotCircleTree001202
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001196
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![9, 13, 15, 15, 4]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree001197.state FourierPilotCircleTree001202.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001197.covered FourierPilotCircleTree001202.covered
#print axioms covered
end FourierPilotCircleTree001196
