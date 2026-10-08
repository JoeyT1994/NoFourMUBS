import FourierPilotCircleTree004110
import FourierPilotCircleTree004111
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004109
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, true]
def state : State := ![2, 3, 3, 3, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree004110.state FourierPilotCircleTree004111.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004110.covered FourierPilotCircleTree004111.covered
#print axioms covered
end FourierPilotCircleTree004109
