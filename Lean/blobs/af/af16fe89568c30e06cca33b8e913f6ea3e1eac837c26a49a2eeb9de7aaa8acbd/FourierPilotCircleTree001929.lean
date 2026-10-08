import FourierPilotCircleTree001930
import FourierPilotCircleTree001931
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001929
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, true, false]
def state : State := ![12, 5, 7, 5, 6]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree001930.state FourierPilotCircleTree001931.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001930.covered FourierPilotCircleTree001931.covered
#print axioms covered
end FourierPilotCircleTree001929
