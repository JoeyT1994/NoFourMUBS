import FourierPilotCircleTree002666
import FourierPilotCircleTree002703
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002665
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, false]
def state : State := ![6, 7, 4, 4, 5]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree002666.state FourierPilotCircleTree002703.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002666.covered FourierPilotCircleTree002703.covered
#print axioms covered
end FourierPilotCircleTree002665
