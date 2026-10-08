import FourierPilotCircleTree002634
import FourierPilotCircleTree002635
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002633
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, false]
def state : State := ![58, 41, 54, 44, 31]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree002634.state FourierPilotCircleTree002635.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002634.covered FourierPilotCircleTree002635.covered
#print axioms covered
end FourierPilotCircleTree002633
