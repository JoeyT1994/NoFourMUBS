import FourierPilotCircleTree004124
import FourierPilotCircleTree004163
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004123
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, true]
def state : State := ![6, 4, 5, 2, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree004124.state FourierPilotCircleTree004163.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004124.covered FourierPilotCircleTree004163.covered
#print axioms covered
end FourierPilotCircleTree004123
