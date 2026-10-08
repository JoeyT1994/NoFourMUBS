import FourierPilotCircleTree003170
import FourierPilotCircleTree003191
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003169
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, true]
def state : State := ![17, 27, 20, 43, 21]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree003170.state FourierPilotCircleTree003191.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003170.covered FourierPilotCircleTree003191.covered
#print axioms covered
end FourierPilotCircleTree003169
