import FourierPilotCircleTree004958
import FourierPilotCircleTree004973
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004957
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, true]
def state : State := ![3, 3, 2, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree004958.state FourierPilotCircleTree004973.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004958.covered FourierPilotCircleTree004973.covered
#print axioms covered
end FourierPilotCircleTree004957
