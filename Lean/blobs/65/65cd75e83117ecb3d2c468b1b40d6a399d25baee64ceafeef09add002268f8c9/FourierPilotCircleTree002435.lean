import FourierPilotCircleTree002436
import FourierPilotCircleTree002437
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002435
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, false]
def state : State := ![7, 10, 13, 13, 13]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree002436.state FourierPilotCircleTree002437.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002436.covered FourierPilotCircleTree002437.covered
#print axioms covered
end FourierPilotCircleTree002435
