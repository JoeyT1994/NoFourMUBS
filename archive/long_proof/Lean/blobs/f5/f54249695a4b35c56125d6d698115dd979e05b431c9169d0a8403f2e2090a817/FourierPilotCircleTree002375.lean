import FourierPilotCircleTree002376
import FourierPilotCircleTree002407
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002375
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, false]
def state : State := ![3, 2, 3, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree002376.state FourierPilotCircleTree002407.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002376.covered FourierPilotCircleTree002407.covered
#print axioms covered
end FourierPilotCircleTree002375
