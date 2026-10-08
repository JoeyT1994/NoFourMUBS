import FourierPilotCircleTree003666
import FourierPilotCircleTree003667
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003665
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, true]
def state : State := ![6, 5, 4, 2, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree003666.state FourierPilotCircleTree003667.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003666.covered FourierPilotCircleTree003667.covered
#print axioms covered
end FourierPilotCircleTree003665
