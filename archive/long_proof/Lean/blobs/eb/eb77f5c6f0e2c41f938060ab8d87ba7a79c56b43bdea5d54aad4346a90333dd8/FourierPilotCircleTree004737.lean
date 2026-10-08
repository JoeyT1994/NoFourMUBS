import FourierPilotCircleTree004738
import FourierPilotCircleTree004739
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004737
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, true]
def state : State := ![2, 3, 3, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree004738.state FourierPilotCircleTree004739.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004738.covered FourierPilotCircleTree004739.covered
#print axioms covered
end FourierPilotCircleTree004737
