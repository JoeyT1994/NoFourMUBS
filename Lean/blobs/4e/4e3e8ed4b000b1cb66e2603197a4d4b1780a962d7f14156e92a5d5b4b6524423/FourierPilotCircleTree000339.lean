import FourierPilotCircleTree000340
import FourierPilotCircleTree000377
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000339
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, false]
def state : State := ![3, 2, 3, 2, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree000340.state FourierPilotCircleTree000377.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000340.covered FourierPilotCircleTree000377.covered
#print axioms covered
end FourierPilotCircleTree000339
