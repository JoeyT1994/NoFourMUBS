import FourierPilotCircleTree000940
import FourierPilotCircleTree000977
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000939
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, false]
def state : State := ![25, 12, 13, 10, 8]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree000940.state FourierPilotCircleTree000977.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000940.covered FourierPilotCircleTree000977.covered
#print axioms covered
end FourierPilotCircleTree000939
