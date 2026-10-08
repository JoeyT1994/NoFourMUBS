import FourierPilotCircleTree004181
import FourierPilotCircleTree004212
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004180
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, true]
def state : State := ![7, 12, 4, 10, 4]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree004181.state FourierPilotCircleTree004212.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004181.covered FourierPilotCircleTree004212.covered
#print axioms covered
end FourierPilotCircleTree004180
