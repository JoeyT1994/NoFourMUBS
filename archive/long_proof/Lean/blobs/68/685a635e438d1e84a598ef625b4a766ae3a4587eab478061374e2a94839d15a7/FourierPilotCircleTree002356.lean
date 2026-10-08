import FourierPilotCircleTree002357
import FourierPilotCircleTree002364
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002356
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, false]
def state : State := ![9, 12, 8, 13, 15]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree002357.state FourierPilotCircleTree002364.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002357.covered FourierPilotCircleTree002364.covered
#print axioms covered
end FourierPilotCircleTree002356
