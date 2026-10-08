import FourierPilotCircleTree002663
import FourierPilotCircleTree002704
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002662
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, false]
def state : State := ![6, 7, 4, 2, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree002663.state FourierPilotCircleTree002704.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002663.covered FourierPilotCircleTree002704.covered
#print axioms covered
end FourierPilotCircleTree002662
