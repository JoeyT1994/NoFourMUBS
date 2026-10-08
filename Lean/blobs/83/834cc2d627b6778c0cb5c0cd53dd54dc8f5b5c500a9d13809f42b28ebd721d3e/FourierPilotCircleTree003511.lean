import FourierPilotCircleTree003512
import FourierPilotCircleTree003513
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003511
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, true]
def state : State := ![117, 41, 54, 89, 63]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree003512.state FourierPilotCircleTree003513.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003512.covered FourierPilotCircleTree003513.covered
#print axioms covered
end FourierPilotCircleTree003511
