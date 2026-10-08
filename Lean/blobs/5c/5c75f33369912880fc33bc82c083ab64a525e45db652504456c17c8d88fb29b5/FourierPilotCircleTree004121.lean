import FourierPilotCircleTree004122
import FourierPilotCircleTree004123
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004121
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, true]
def state : State := ![6, 4, 2, 2, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree004122.state FourierPilotCircleTree004123.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004122.covered FourierPilotCircleTree004123.covered
#print axioms covered
end FourierPilotCircleTree004121
