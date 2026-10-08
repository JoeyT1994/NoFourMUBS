import FourierPilotCircleTree002079
import FourierPilotCircleTree002082
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002078
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, true, false]
def state : State := ![80, 111, 32, 123, 68]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree002079.state FourierPilotCircleTree002082.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002079.covered FourierPilotCircleTree002082.covered
#print axioms covered
end FourierPilotCircleTree002078
