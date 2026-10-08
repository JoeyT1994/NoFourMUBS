import FourierPilotCircleTree002894
import FourierPilotCircleTree002897
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002893
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![18, 29, 16, 22, 25]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree002894.state FourierPilotCircleTree002897.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002894.covered FourierPilotCircleTree002897.covered
#print axioms covered
end FourierPilotCircleTree002893
