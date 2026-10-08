import FourierPilotCircleTree004707
import FourierPilotCircleTree004708
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004706
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, true]
def state : State := ![23, 22, 20, 31, 26]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree004707.state FourierPilotCircleTree004708.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004707.covered FourierPilotCircleTree004708.covered
#print axioms covered
end FourierPilotCircleTree004706
