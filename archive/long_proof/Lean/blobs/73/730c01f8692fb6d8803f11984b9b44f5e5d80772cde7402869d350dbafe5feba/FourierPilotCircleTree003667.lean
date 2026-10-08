import FourierPilotCircleTree003668
import FourierPilotCircleTree003711
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003667
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, true]
def state : State := ![6, 5, 4, 5, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree003668.state FourierPilotCircleTree003711.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003668.covered FourierPilotCircleTree003711.covered
#print axioms covered
end FourierPilotCircleTree003667
