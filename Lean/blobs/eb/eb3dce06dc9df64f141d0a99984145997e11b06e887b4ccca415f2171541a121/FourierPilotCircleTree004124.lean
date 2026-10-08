import FourierPilotCircleTree004125
import FourierPilotCircleTree004162
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004124
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, true]
def state : State := ![6, 4, 5, 4, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree004125.state FourierPilotCircleTree004162.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004125.covered FourierPilotCircleTree004162.covered
#print axioms covered
end FourierPilotCircleTree004124
