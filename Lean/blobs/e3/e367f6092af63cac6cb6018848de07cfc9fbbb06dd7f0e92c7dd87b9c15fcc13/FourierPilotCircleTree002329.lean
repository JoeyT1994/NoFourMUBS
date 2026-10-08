import FourierPilotCircleTree002330
import FourierPilotCircleTree002331
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002329
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, false]
def state : State := ![4, 7, 5, 5, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree002330.state FourierPilotCircleTree002331.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002330.covered FourierPilotCircleTree002331.covered
#print axioms covered
end FourierPilotCircleTree002329
