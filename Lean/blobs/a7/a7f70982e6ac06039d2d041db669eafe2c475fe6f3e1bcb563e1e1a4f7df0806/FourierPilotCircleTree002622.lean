import FourierPilotCircleTree002623
import FourierPilotCircleTree002624
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002622
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, false]
def state : State := ![14, 20, 13, 22, 15]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree002623.state FourierPilotCircleTree002624.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002623.covered FourierPilotCircleTree002624.covered
#print axioms covered
end FourierPilotCircleTree002622
