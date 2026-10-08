import FourierPilotCircleTree002676
import FourierPilotCircleTree002693
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002675
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, false]
def state : State := ![24, 28, 16, 8, 21]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree002676.state FourierPilotCircleTree002693.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002676.covered FourierPilotCircleTree002693.covered
#print axioms covered
end FourierPilotCircleTree002675
