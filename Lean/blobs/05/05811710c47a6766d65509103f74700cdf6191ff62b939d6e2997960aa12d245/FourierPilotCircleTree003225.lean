import FourierPilotCircleTree003226
import FourierPilotCircleTree003237
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003225
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, true]
def state : State := ![9, 12, 4, 13, 7]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree003226.state FourierPilotCircleTree003237.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003226.covered FourierPilotCircleTree003237.covered
#print axioms covered
end FourierPilotCircleTree003225
