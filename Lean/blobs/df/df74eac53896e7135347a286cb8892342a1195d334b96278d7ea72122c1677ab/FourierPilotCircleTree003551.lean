import FourierPilotCircleTree003552
import FourierPilotCircleTree003553
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003551
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, true]
def state : State := ![48, 28, 16, 16, 43]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree003552.state FourierPilotCircleTree003553.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003552.covered FourierPilotCircleTree003553.covered
#print axioms covered
end FourierPilotCircleTree003551
