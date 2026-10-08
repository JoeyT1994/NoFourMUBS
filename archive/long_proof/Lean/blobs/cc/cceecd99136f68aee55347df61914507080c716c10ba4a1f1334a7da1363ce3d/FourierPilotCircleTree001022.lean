import FourierPilotCircleTree001023
import FourierPilotCircleTree001024
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001022
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, false]
def state : State := ![9, 9, 15, 26, 26]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree001023.state FourierPilotCircleTree001024.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001023.covered FourierPilotCircleTree001024.covered
#print axioms covered
end FourierPilotCircleTree001022
