import FourierPilotCircleTree005081
import FourierPilotCircleTree005102
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005080
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, true, true]
def state : State := ![19, 19, 31, 26, 26]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree005081.state FourierPilotCircleTree005102.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005081.covered FourierPilotCircleTree005102.covered
#print axioms covered
end FourierPilotCircleTree005080
