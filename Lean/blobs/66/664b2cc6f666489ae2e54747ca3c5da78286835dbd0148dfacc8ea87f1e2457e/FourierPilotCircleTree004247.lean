import FourierPilotCircleTree004248
import FourierPilotCircleTree004263
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004247
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, true]
def state : State := ![11, 7, 7, 4, 5]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree004248.state FourierPilotCircleTree004263.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004248.covered FourierPilotCircleTree004263.covered
#print axioms covered
end FourierPilotCircleTree004247
