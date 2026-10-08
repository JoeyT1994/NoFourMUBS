import FourierPilotCircleTree005199
import FourierPilotCircleTree005224
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005198
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, true]
def state : State := ![4, 6, 4, 6, 4]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree005199.state FourierPilotCircleTree005224.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005199.covered FourierPilotCircleTree005224.covered
#print axioms covered
end FourierPilotCircleTree005198
