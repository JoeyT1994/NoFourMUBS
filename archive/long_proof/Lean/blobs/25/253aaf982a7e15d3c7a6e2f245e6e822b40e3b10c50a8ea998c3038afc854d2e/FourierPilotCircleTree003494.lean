import FourierPilotCircleTree003495
import FourierPilotCircleTree003496
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003494
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, true]
def state : State := ![14, 20, 13, 22, 15]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree003495.state FourierPilotCircleTree003496.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003495.covered FourierPilotCircleTree003496.covered
#print axioms covered
end FourierPilotCircleTree003494
