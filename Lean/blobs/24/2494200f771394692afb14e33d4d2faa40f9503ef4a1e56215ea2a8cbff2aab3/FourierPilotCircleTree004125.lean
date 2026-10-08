import FourierPilotCircleTree004126
import FourierPilotCircleTree004127
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004125
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, true]
def state : State := ![6, 4, 5, 4, 6]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree004126.state FourierPilotCircleTree004127.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004126.covered FourierPilotCircleTree004127.covered
#print axioms covered
end FourierPilotCircleTree004125
