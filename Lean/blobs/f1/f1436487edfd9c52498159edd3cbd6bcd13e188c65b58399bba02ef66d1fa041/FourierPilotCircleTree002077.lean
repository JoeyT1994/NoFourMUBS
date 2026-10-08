import FourierPilotCircleTree002078
import FourierPilotCircleTree002083
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002077
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, true, false]
def state : State := ![80, 111, 32, 123, 34]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree002078.state FourierPilotCircleTree002083.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002078.covered FourierPilotCircleTree002083.covered
#print axioms covered
end FourierPilotCircleTree002077
