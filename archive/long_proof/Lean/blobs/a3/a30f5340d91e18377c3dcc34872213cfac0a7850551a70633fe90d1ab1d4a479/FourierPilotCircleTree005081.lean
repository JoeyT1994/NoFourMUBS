import FourierPilotCircleTree005082
import FourierPilotCircleTree005101
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005081
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, true, true]
def state : State := ![19, 19, 31, 52, 26]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree005082.state FourierPilotCircleTree005101.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005082.covered FourierPilotCircleTree005101.covered
#print axioms covered
end FourierPilotCircleTree005081
