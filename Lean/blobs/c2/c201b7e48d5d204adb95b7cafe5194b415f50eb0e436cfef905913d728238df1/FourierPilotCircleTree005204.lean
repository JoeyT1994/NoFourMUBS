import FourierPilotCircleTree005205
import FourierPilotCircleTree005222
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005204
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, true]
def state : State := ![9, 12, 8, 13, 4]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree005205.state FourierPilotCircleTree005222.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005205.covered FourierPilotCircleTree005222.covered
#print axioms covered
end FourierPilotCircleTree005204
