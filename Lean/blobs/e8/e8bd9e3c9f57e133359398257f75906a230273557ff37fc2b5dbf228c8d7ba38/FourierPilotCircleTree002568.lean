import FourierPilotCircleTree002569
import FourierPilotCircleTree002570
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002568
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, false]
def state : State := ![18, 27, 20, 25, 16]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree002569.state FourierPilotCircleTree002570.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002569.covered FourierPilotCircleTree002570.covered
#print axioms covered
end FourierPilotCircleTree002568
