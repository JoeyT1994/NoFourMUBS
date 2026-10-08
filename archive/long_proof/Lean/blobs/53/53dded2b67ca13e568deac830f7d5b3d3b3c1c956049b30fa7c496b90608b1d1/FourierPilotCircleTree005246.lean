import FourierPilotCircleTree005247
import FourierPilotCircleTree005248
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005246
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, true]
def state : State := ![10, 7, 6, 4, 5]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree005247.state FourierPilotCircleTree005248.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005247.covered FourierPilotCircleTree005248.covered
#print axioms covered
end FourierPilotCircleTree005246
