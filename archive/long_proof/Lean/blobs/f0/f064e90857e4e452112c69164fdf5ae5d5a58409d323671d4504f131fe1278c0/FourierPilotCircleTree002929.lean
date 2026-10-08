import FourierPilotCircleTree002930
import FourierPilotCircleTree002965
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002929
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![10, 13, 8, 15, 4]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree002930.state FourierPilotCircleTree002965.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002930.covered FourierPilotCircleTree002965.covered
#print axioms covered
end FourierPilotCircleTree002929
