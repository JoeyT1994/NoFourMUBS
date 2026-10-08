import FourierPilotCircleTree004950
import FourierPilotCircleTree004951
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004949
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, true]
def state : State := ![3, 2, 3, 2, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree004950.state FourierPilotCircleTree004951.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004950.covered FourierPilotCircleTree004951.covered
#print axioms covered
end FourierPilotCircleTree004949
