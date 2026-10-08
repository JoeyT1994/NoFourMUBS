import FourierPilotCircleTree002578
import FourierPilotCircleTree002581
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002577
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, false]
def state : State := ![37, 54, 41, 102, 32]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree002578.state FourierPilotCircleTree002581.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002578.covered FourierPilotCircleTree002581.covered
#print axioms covered
end FourierPilotCircleTree002577
