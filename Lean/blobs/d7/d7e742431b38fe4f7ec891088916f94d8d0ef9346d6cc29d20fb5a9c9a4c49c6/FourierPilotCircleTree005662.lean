import FourierPilotCircleTree005663
import FourierPilotCircleTree005664
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005662
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, true]
def state : State := ![7, 7, 3, 2, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree005663.state FourierPilotCircleTree005664.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005663.covered FourierPilotCircleTree005664.covered
#print axioms covered
end FourierPilotCircleTree005662
