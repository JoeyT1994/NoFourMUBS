import FourierPilotCircleTree003761
import FourierPilotCircleTree003784
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003760
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![9, 7, 7, 11, 12]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree003761.state FourierPilotCircleTree003784.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003761.covered FourierPilotCircleTree003784.covered
#print axioms covered
end FourierPilotCircleTree003760
