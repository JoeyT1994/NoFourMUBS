import FourierPilotCircleTree000972
import FourierPilotCircleTree000973
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000971
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, false]
def state : State := ![50, 98, 55, 43, 34]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree000972.state FourierPilotCircleTree000973.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000972.covered FourierPilotCircleTree000973.covered
#print axioms covered
end FourierPilotCircleTree000971
