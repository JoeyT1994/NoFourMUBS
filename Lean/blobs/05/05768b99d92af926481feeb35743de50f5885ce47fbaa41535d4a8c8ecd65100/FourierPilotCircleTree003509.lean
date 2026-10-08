import FourierPilotCircleTree003510
import FourierPilotCircleTree003511
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003509
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, true]
def state : State := ![58, 41, 54, 89, 63]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree003510.state FourierPilotCircleTree003511.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003510.covered FourierPilotCircleTree003511.covered
#print axioms covered
end FourierPilotCircleTree003509
