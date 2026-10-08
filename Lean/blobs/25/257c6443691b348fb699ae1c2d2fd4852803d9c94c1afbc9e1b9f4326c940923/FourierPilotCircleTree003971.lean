import FourierPilotCircleTree003972
import FourierPilotCircleTree003973
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003971
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![29, 18, 16, 51, 45]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree003972.state FourierPilotCircleTree003973.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003972.covered FourierPilotCircleTree003973.covered
#print axioms covered
end FourierPilotCircleTree003971
