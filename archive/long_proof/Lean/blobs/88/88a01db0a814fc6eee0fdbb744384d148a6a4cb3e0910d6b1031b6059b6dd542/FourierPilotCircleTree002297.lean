import FourierPilotCircleTree002298
import FourierPilotCircleTree002319
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002297
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, false]
def state : State := ![17, 27, 20, 43, 21]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree002298.state FourierPilotCircleTree002319.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002298.covered FourierPilotCircleTree002319.covered
#print axioms covered
end FourierPilotCircleTree002297
