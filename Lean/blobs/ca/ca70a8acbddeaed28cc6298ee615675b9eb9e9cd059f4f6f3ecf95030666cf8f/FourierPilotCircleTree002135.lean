import FourierPilotCircleTree002136
import FourierPilotCircleTree002153
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002135
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, true, false]
def state : State := ![6, 4, 7, 2, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree002136.state FourierPilotCircleTree002153.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002136.covered FourierPilotCircleTree002153.covered
#print axioms covered
end FourierPilotCircleTree002135
