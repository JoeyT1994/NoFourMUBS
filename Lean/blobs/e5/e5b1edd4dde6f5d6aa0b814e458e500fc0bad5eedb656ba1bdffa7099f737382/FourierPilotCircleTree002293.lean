import FourierPilotCircleTree002294
import FourierPilotCircleTree002295
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002293
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, false]
def state : State := ![8, 27, 20, 21, 21]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree002294.state FourierPilotCircleTree002295.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002294.covered FourierPilotCircleTree002295.covered
#print axioms covered
end FourierPilotCircleTree002293
