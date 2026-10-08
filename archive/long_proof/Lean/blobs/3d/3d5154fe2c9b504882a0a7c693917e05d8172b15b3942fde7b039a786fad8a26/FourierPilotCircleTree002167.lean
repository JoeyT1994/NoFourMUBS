import FourierPilotCircleTree002168
import FourierPilotCircleTree002169
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002167
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, true, false]
def state : State := ![13, 10, 15, 8, 15]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree002168.state FourierPilotCircleTree002169.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002168.covered FourierPilotCircleTree002169.covered
#print axioms covered
end FourierPilotCircleTree002167
