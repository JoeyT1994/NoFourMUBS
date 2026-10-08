import FourierPilotCircleTree002434
import FourierPilotCircleTree002435
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002433
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, false]
def state : State := ![7, 10, 13, 13, 6]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree002434.state FourierPilotCircleTree002435.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002434.covered FourierPilotCircleTree002435.covered
#print axioms covered
end FourierPilotCircleTree002433
