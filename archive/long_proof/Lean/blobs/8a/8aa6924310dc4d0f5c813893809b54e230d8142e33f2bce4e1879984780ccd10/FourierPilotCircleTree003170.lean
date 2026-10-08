import FourierPilotCircleTree003171
import FourierPilotCircleTree003172
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003170
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, true]
def state : State := ![17, 27, 20, 43, 42]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree003171.state FourierPilotCircleTree003172.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003171.covered FourierPilotCircleTree003172.covered
#print axioms covered
end FourierPilotCircleTree003170
