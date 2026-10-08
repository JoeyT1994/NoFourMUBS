import FourierPilotCircleTree002287
import FourierPilotCircleTree002288
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002286
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, false]
def state : State := ![8, 13, 10, 10, 10]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree002287.state FourierPilotCircleTree002288.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002287.covered FourierPilotCircleTree002288.covered
#print axioms covered
end FourierPilotCircleTree002286
