import FourierPilotCircleTree002760
import FourierPilotCircleTree002775
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002759
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, false]
def state : State := ![46, 49, 31, 53, 21]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree002760.state FourierPilotCircleTree002775.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002760.covered FourierPilotCircleTree002775.covered
#print axioms covered
end FourierPilotCircleTree002759
