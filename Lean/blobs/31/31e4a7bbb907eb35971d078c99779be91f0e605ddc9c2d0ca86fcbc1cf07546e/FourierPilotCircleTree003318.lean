import FourierPilotCircleTree003319
import FourierPilotCircleTree003338
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003318
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, true]
def state : State := ![30, 20, 27, 52, 53]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree003319.state FourierPilotCircleTree003338.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003319.covered FourierPilotCircleTree003338.covered
#print axioms covered
end FourierPilotCircleTree003318
