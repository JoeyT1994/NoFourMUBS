import FourierPilotCircleTree003677
import FourierPilotCircleTree003678
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003676
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, true]
def state : State := ![24, 11, 8, 10, 13]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree003677.state FourierPilotCircleTree003678.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003677.covered FourierPilotCircleTree003678.covered
#print axioms covered
end FourierPilotCircleTree003676
