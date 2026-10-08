import FourierPilotCircleTree003611
import FourierPilotCircleTree003612
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003610
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, true]
def state : State := ![5, 6, 7, 6, 5]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree003611.state FourierPilotCircleTree003612.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003611.covered FourierPilotCircleTree003612.covered
#print axioms covered
end FourierPilotCircleTree003610
