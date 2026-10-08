import FourierPilotCircleTree001480
import FourierPilotCircleTree001495
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001479
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, false]
def state : State := ![20, 29, 27, 31, 22]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree001480.state FourierPilotCircleTree001495.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001480.covered FourierPilotCircleTree001495.covered
#print axioms covered
end FourierPilotCircleTree001479
