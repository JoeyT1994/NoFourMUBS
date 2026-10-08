import FourierPilotCircleTree002902
import FourierPilotCircleTree002903
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002901
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![37, 29, 16, 45, 51]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree002902.state FourierPilotCircleTree002903.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002902.covered FourierPilotCircleTree002903.covered
#print axioms covered
end FourierPilotCircleTree002901
