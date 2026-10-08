import FourierPilotCircleTree002301
import FourierPilotCircleTree002306
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002300
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, false]
def state : State := ![17, 55, 20, 43, 42]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree002301.state FourierPilotCircleTree002306.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002301.covered FourierPilotCircleTree002306.covered
#print axioms covered
end FourierPilotCircleTree002300
