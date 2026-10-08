import FourierPilotCircleTree002750
import FourierPilotCircleTree002777
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002749
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, false]
def state : State := ![23, 24, 15, 13, 10]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree002750.state FourierPilotCircleTree002777.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002750.covered FourierPilotCircleTree002777.covered
#print axioms covered
end FourierPilotCircleTree002749
