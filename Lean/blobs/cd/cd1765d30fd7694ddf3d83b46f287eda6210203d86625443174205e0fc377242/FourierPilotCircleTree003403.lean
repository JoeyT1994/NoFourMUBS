import FourierPilotCircleTree003404
import FourierPilotCircleTree003405
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003403
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, true]
def state : State := ![95, 38, 63, 63, 104]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree003404.state FourierPilotCircleTree003405.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003404.covered FourierPilotCircleTree003405.covered
#print axioms covered
end FourierPilotCircleTree003403
