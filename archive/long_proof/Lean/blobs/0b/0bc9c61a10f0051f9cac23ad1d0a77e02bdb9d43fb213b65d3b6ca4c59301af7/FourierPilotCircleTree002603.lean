import FourierPilotCircleTree002604
import FourierPilotCircleTree002605
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002603
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, false]
def state : State := ![3, 2, 3, 2, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree002604.state FourierPilotCircleTree002605.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002604.covered FourierPilotCircleTree002605.covered
#print axioms covered
end FourierPilotCircleTree002603
