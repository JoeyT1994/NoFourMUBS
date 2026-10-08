import FourierPilotCircleTree003371
import FourierPilotCircleTree003410
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003370
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, true]
def state : State := ![5, 4, 7, 7, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree003371.state FourierPilotCircleTree003410.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003371.covered FourierPilotCircleTree003410.covered
#print axioms covered
end FourierPilotCircleTree003370
