import FourierPilotCircleTree002948
import FourierPilotCircleTree002949
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002947
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![80, 111, 32, 61, 34]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree002948.state FourierPilotCircleTree002949.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002948.covered FourierPilotCircleTree002949.covered
#print axioms covered
end FourierPilotCircleTree002947
