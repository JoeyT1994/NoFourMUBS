import FourierPilotCircleTree002023
import FourierPilotCircleTree002024
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002022
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, true, false]
def state : State := ![18, 29, 16, 44, 25]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree002023.state FourierPilotCircleTree002024.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002023.covered FourierPilotCircleTree002024.covered
#print axioms covered
end FourierPilotCircleTree002022
