import FourierPilotCircleTree002315
import FourierPilotCircleTree002316
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002314
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, false]
def state : State := ![35, 111, 82, 87, 84]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree002315.state FourierPilotCircleTree002316.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002315.covered FourierPilotCircleTree002316.covered
#print axioms covered
end FourierPilotCircleTree002314
