import FourierPilotCircleTree004414
import FourierPilotCircleTree004441
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004413
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, true]
def state : State := ![3, 2, 2, 3, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree004414.state FourierPilotCircleTree004441.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004414.covered FourierPilotCircleTree004441.covered
#print axioms covered
end FourierPilotCircleTree004413
