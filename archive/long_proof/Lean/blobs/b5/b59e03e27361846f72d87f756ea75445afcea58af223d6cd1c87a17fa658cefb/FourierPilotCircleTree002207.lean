import FourierPilotCircleTree002208
import FourierPilotCircleTree002209
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002207
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, true, false]
def state : State := ![3, 2, 3, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree002208.state FourierPilotCircleTree002209.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002208.covered FourierPilotCircleTree002209.covered
#print axioms covered
end FourierPilotCircleTree002207
