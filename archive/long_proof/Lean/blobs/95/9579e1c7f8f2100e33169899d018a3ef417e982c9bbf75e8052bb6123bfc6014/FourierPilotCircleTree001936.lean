import FourierPilotCircleTree001937
import FourierPilotCircleTree001968
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001936
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, true, false]
def state : State := ![12, 11, 15, 10, 13]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree001937.state FourierPilotCircleTree001968.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001937.covered FourierPilotCircleTree001968.covered
#print axioms covered
end FourierPilotCircleTree001936
