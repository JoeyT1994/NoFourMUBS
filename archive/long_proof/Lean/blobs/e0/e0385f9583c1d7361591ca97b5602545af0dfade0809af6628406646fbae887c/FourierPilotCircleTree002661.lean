import FourierPilotCircleTree002662
import FourierPilotCircleTree002705
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002661
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, false]
def state : State := ![6, 7, 2, 2, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree002662.state FourierPilotCircleTree002705.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002662.covered FourierPilotCircleTree002705.covered
#print axioms covered
end FourierPilotCircleTree002661
