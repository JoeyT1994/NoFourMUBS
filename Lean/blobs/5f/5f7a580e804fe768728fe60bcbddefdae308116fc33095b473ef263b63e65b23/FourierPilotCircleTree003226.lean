import FourierPilotCircleTree003227
import FourierPilotCircleTree003228
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003226
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, true]
def state : State := ![9, 12, 8, 13, 7]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree003227.state FourierPilotCircleTree003228.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003227.covered FourierPilotCircleTree003228.covered
#print axioms covered
end FourierPilotCircleTree003226
