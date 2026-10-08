import FourierPilotCircleTree002358
import FourierPilotCircleTree002363
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002357
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, false]
def state : State := ![9, 24, 8, 13, 15]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree002358.state FourierPilotCircleTree002363.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002358.covered FourierPilotCircleTree002363.covered
#print axioms covered
end FourierPilotCircleTree002357
