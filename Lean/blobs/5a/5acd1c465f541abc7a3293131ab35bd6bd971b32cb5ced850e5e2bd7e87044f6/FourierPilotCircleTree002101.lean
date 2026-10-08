import FourierPilotCircleTree002102
import FourierPilotCircleTree002117
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002101
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, true, false]
def state : State := ![5, 7, 4, 7, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree002102.state FourierPilotCircleTree002117.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002102.covered FourierPilotCircleTree002117.covered
#print axioms covered
end FourierPilotCircleTree002101
