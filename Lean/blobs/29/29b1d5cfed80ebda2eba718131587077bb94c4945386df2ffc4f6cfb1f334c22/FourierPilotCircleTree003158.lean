import FourierPilotCircleTree003159
import FourierPilotCircleTree003160
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003158
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, true]
def state : State := ![8, 13, 10, 10, 10]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree003159.state FourierPilotCircleTree003160.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003159.covered FourierPilotCircleTree003160.covered
#print axioms covered
end FourierPilotCircleTree003158
