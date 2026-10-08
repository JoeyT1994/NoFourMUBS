import FourierPilotCircleTree002429
import FourierPilotCircleTree002472
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002428
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, false]
def state : State := ![7, 5, 6, 6, 6]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree002429.state FourierPilotCircleTree002472.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002429.covered FourierPilotCircleTree002472.covered
#print axioms covered
end FourierPilotCircleTree002428
