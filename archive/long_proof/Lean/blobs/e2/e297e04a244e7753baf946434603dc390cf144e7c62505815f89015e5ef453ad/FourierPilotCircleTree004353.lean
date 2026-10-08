import FourierPilotCircleTree004354
import FourierPilotCircleTree004391
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004353
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, true]
def state : State := ![13, 4, 10, 10, 5]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree004354.state FourierPilotCircleTree004391.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004354.covered FourierPilotCircleTree004391.covered
#print axioms covered
end FourierPilotCircleTree004353
