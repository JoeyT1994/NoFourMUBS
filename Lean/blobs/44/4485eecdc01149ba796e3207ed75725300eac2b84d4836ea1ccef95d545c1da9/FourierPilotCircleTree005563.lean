import FourierPilotCircleTree005564
import FourierPilotCircleTree005565
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005563
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, true]
def state : State := ![2, 2, 2, 3, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree005564.state FourierPilotCircleTree005565.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005564.covered FourierPilotCircleTree005565.covered
#print axioms covered
end FourierPilotCircleTree005563
