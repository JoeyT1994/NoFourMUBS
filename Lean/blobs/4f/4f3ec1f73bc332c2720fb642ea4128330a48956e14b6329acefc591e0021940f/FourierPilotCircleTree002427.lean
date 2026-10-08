import FourierPilotCircleTree002428
import FourierPilotCircleTree002473
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002427
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, false]
def state : State := ![7, 5, 6, 6, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree002428.state FourierPilotCircleTree002473.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002428.covered FourierPilotCircleTree002473.covered
#print axioms covered
end FourierPilotCircleTree002427
