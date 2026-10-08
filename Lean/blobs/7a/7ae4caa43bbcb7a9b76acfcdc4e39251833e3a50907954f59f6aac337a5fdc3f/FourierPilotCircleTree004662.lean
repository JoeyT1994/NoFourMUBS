import FourierPilotCircleTree004663
import FourierPilotCircleTree004664
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004662
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, true]
def state : State := ![11, 11, 10, 7, 12]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree004663.state FourierPilotCircleTree004664.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004663.covered FourierPilotCircleTree004664.covered
#print axioms covered
end FourierPilotCircleTree004662
