import FourierPilotCircleTree003310
import FourierPilotCircleTree003343
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003309
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, true]
def state : State := ![15, 10, 13, 13, 13]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree003310.state FourierPilotCircleTree003343.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003310.covered FourierPilotCircleTree003343.covered
#print axioms covered
end FourierPilotCircleTree003309
