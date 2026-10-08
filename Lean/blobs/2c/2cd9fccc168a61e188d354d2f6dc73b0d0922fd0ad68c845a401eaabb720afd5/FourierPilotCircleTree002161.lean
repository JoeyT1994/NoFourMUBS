import FourierPilotCircleTree002162
import FourierPilotCircleTree002203
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002161
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, true, false]
def state : State := ![13, 5, 7, 4, 7]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree002162.state FourierPilotCircleTree002203.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002162.covered FourierPilotCircleTree002203.covered
#print axioms covered
end FourierPilotCircleTree002161
