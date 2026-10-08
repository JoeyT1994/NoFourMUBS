import FourierPilotCircleTree002951
import FourierPilotCircleTree002954
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002950
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![80, 111, 32, 123, 68]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree002951.state FourierPilotCircleTree002954.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002951.covered FourierPilotCircleTree002954.covered
#print axioms covered
end FourierPilotCircleTree002950
