import FourierPilotCircleTree005048
import FourierPilotCircleTree005109
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005047
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, true, true]
def state : State := ![2, 1, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree005048.state FourierPilotCircleTree005109.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005048.covered FourierPilotCircleTree005109.covered
#print axioms covered
end FourierPilotCircleTree005047
