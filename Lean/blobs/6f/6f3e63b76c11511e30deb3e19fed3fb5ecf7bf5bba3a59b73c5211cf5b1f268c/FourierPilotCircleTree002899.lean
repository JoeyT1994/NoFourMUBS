import FourierPilotCircleTree002900
import FourierPilotCircleTree002901
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002899
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![18, 29, 16, 45, 51]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree002900.state FourierPilotCircleTree002901.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002900.covered FourierPilotCircleTree002901.covered
#print axioms covered
end FourierPilotCircleTree002899
