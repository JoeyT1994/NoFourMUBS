import FourierPilotCircleTree002880
import FourierPilotCircleTree002881
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002879
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![4, 7, 4, 5, 6]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree002880.state FourierPilotCircleTree002881.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002880.covered FourierPilotCircleTree002881.covered
#print axioms covered
end FourierPilotCircleTree002879
