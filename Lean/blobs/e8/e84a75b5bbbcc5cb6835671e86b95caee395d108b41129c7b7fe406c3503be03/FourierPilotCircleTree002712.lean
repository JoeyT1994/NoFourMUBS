import FourierPilotCircleTree002713
import FourierPilotCircleTree002714
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002712
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, false]
def state : State := ![2, 2, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree002713.state FourierPilotCircleTree002714.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002713.covered FourierPilotCircleTree002714.covered
#print axioms covered
end FourierPilotCircleTree002712
