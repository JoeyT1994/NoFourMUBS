import FourierPilotCircleTree005680
import FourierPilotCircleTree005705
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005679
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, true]
def state : State := ![28, 14, 15, 21, 21]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree005680.state FourierPilotCircleTree005705.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005680.covered FourierPilotCircleTree005705.covered
#print axioms covered
end FourierPilotCircleTree005679
