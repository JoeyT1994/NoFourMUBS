import FourierPilotCircleTree000085
import FourierPilotCircleTree000086
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000084
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, false]
def state : State := ![20, 14, 27, 8, 22]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree000085.state FourierPilotCircleTree000086.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000085.covered FourierPilotCircleTree000086.covered
#print axioms covered
end FourierPilotCircleTree000084
