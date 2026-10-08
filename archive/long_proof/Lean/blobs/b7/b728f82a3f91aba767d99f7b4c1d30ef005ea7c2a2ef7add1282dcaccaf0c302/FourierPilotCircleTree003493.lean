import FourierPilotCircleTree003494
import FourierPilotCircleTree003517
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003493
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, true]
def state : State := ![14, 10, 13, 22, 15]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree003494.state FourierPilotCircleTree003517.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003494.covered FourierPilotCircleTree003517.covered
#print axioms covered
end FourierPilotCircleTree003493
