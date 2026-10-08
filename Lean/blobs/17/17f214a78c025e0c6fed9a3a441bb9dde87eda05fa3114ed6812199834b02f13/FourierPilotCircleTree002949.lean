import FourierPilotCircleTree002950
import FourierPilotCircleTree002955
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002949
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![80, 111, 32, 123, 34]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree002950.state FourierPilotCircleTree002955.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002950.covered FourierPilotCircleTree002955.covered
#print axioms covered
end FourierPilotCircleTree002949
