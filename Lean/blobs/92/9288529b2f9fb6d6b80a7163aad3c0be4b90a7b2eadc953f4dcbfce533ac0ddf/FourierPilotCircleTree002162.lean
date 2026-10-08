import FourierPilotCircleTree002163
import FourierPilotCircleTree002164
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002162
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, true, false]
def state : State := ![13, 10, 7, 4, 7]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree002163.state FourierPilotCircleTree002164.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002163.covered FourierPilotCircleTree002164.covered
#print axioms covered
end FourierPilotCircleTree002162
