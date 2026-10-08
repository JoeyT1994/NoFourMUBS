import FourierPilotCircleTree002022
import FourierPilotCircleTree002025
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002021
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, true, false]
def state : State := ![18, 29, 16, 22, 25]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree002022.state FourierPilotCircleTree002025.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002022.covered FourierPilotCircleTree002025.covered
#print axioms covered
end FourierPilotCircleTree002021
