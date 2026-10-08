import FourierPilotCircleTree004978
import FourierPilotCircleTree005043
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004977
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, true]
def state : State := ![3, 3, 3, 2, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree004978.state FourierPilotCircleTree005043.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004978.covered FourierPilotCircleTree005043.covered
#print axioms covered
end FourierPilotCircleTree004977
