import FourierPilotCircleTree002670
import FourierPilotCircleTree002697
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002669
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, false]
def state : State := ![12, 14, 8, 4, 10]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree002670.state FourierPilotCircleTree002697.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002670.covered FourierPilotCircleTree002697.covered
#print axioms covered
end FourierPilotCircleTree002669
