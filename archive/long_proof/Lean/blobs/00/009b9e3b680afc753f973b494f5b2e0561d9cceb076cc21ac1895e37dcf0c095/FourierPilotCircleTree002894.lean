import FourierPilotCircleTree002895
import FourierPilotCircleTree002896
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002894
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![18, 29, 16, 44, 25]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree002895.state FourierPilotCircleTree002896.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002895.covered FourierPilotCircleTree002896.covered
#print axioms covered
end FourierPilotCircleTree002894
