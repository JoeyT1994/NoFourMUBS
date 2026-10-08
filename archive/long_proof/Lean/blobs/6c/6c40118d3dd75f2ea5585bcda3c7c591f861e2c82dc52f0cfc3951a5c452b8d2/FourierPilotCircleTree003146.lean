import FourierPilotCircleTree003147
import FourierPilotCircleTree003148
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003146
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, true]
def state : State := ![4, 6, 2, 2, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree003147.state FourierPilotCircleTree003148.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003147.covered FourierPilotCircleTree003148.covered
#print axioms covered
end FourierPilotCircleTree003146
