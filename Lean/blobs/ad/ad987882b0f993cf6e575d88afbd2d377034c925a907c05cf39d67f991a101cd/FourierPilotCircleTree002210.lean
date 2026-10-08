import FourierPilotCircleTree002211
import FourierPilotCircleTree002212
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002210
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, true, false]
def state : State := ![7, 4, 3, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree002211.state FourierPilotCircleTree002212.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002211.covered FourierPilotCircleTree002212.covered
#print axioms covered
end FourierPilotCircleTree002210
