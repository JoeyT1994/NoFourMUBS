import FourierPilotCircleTree002134
import FourierPilotCircleTree002135
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002133
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, true, false]
def state : State := ![6, 4, 3, 2, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree002134.state FourierPilotCircleTree002135.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002134.covered FourierPilotCircleTree002135.covered
#print axioms covered
end FourierPilotCircleTree002133
