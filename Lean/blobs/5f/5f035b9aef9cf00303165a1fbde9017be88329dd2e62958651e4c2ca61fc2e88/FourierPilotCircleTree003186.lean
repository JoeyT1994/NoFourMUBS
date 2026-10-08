import FourierPilotCircleTree003187
import FourierPilotCircleTree003188
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003186
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, true]
def state : State := ![35, 111, 82, 87, 84]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree003187.state FourierPilotCircleTree003188.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003187.covered FourierPilotCircleTree003188.covered
#print axioms covered
end FourierPilotCircleTree003186
