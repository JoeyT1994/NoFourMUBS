import FourierPilotCircleTree004092
import FourierPilotCircleTree004101
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004091
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, true]
def state : State := ![41, 58, 27, 31, 44]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree004092.state FourierPilotCircleTree004101.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004092.covered FourierPilotCircleTree004101.covered
#print axioms covered
end FourierPilotCircleTree004091
