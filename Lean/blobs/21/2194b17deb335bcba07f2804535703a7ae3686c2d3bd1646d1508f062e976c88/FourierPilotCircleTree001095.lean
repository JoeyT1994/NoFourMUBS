import FourierPilotCircleTree001096
import FourierPilotCircleTree001097
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001095
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, false]
def state : State := ![57, 57, 32, 87, 43]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree001096.state FourierPilotCircleTree001097.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001096.covered FourierPilotCircleTree001097.covered
#print axioms covered
end FourierPilotCircleTree001095
