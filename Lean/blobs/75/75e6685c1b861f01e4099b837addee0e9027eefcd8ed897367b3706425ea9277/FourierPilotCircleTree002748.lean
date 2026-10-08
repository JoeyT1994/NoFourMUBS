import FourierPilotCircleTree002749
import FourierPilotCircleTree002778
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002748
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, false]
def state : State := ![23, 12, 15, 13, 10]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree002749.state FourierPilotCircleTree002778.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002749.covered FourierPilotCircleTree002778.covered
#print axioms covered
end FourierPilotCircleTree002748
