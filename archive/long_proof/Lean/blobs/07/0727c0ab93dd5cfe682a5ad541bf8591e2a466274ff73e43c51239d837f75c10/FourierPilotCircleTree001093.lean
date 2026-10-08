import FourierPilotCircleTree001094
import FourierPilotCircleTree001095
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001093
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, false]
def state : State := ![57, 57, 32, 43, 43]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree001094.state FourierPilotCircleTree001095.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001094.covered FourierPilotCircleTree001095.covered
#print axioms covered
end FourierPilotCircleTree001093
