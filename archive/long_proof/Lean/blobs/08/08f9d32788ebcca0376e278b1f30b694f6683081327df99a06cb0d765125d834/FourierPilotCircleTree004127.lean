import FourierPilotCircleTree004128
import FourierPilotCircleTree004161
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004127
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, true]
def state : State := ![13, 4, 5, 4, 6]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree004128.state FourierPilotCircleTree004161.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004128.covered FourierPilotCircleTree004161.covered
#print axioms covered
end FourierPilotCircleTree004127
