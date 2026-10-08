import FourierPilotCircleTree004133
import FourierPilotCircleTree004134
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004132
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, true]
def state : State := ![13, 9, 10, 8, 12]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree004133.state FourierPilotCircleTree004134.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004133.covered FourierPilotCircleTree004134.covered
#print axioms covered
end FourierPilotCircleTree004132
