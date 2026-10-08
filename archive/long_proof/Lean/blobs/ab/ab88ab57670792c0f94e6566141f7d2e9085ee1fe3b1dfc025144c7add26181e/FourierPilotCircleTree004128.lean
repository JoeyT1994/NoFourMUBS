import FourierPilotCircleTree004129
import FourierPilotCircleTree004160
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004128
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, true]
def state : State := ![13, 4, 10, 4, 6]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree004129.state FourierPilotCircleTree004160.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004129.covered FourierPilotCircleTree004160.covered
#print axioms covered
end FourierPilotCircleTree004128
