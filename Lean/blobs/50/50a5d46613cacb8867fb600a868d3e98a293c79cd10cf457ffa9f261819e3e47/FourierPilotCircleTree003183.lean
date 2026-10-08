import FourierPilotCircleTree003184
import FourierPilotCircleTree003185
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003183
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, true]
def state : State := ![35, 55, 41, 87, 84]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree003184.state FourierPilotCircleTree003185.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003184.covered FourierPilotCircleTree003185.covered
#print axioms covered
end FourierPilotCircleTree003183
