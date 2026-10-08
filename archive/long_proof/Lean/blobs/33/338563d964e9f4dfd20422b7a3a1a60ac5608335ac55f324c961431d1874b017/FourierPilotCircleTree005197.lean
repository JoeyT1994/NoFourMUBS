import FourierPilotCircleTree005198
import FourierPilotCircleTree005225
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005197
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, true]
def state : State := ![4, 6, 4, 6, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree005198.state FourierPilotCircleTree005225.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005198.covered FourierPilotCircleTree005225.covered
#print axioms covered
end FourierPilotCircleTree005197
