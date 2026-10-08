import FourierPilotCircleTree001080
import FourierPilotCircleTree001081
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001079
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, false]
def state : State := ![14, 14, 8, 21, 10]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree001080.state FourierPilotCircleTree001081.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001080.covered FourierPilotCircleTree001081.covered
#print axioms covered
end FourierPilotCircleTree001079
