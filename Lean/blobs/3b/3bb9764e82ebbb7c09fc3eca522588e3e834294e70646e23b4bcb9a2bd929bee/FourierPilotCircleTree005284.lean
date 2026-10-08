import FourierPilotCircleTree005285
import FourierPilotCircleTree005286
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005284
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, true]
def state : State := ![6, 4, 2, 3, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree005285.state FourierPilotCircleTree005286.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005285.covered FourierPilotCircleTree005286.covered
#print axioms covered
end FourierPilotCircleTree005284
