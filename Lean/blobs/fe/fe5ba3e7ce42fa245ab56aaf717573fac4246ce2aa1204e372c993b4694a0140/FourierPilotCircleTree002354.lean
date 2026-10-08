import FourierPilotCircleTree002355
import FourierPilotCircleTree002356
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002354
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, false]
def state : State := ![9, 12, 8, 13, 7]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree002355.state FourierPilotCircleTree002356.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002355.covered FourierPilotCircleTree002356.covered
#print axioms covered
end FourierPilotCircleTree002354
