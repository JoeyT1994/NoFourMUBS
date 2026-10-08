import FourierPilotCircleTree003791
import FourierPilotCircleTree003812
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003790
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![4, 3, 3, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree003791.state FourierPilotCircleTree003812.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003791.covered FourierPilotCircleTree003812.covered
#print axioms covered
end FourierPilotCircleTree003790
