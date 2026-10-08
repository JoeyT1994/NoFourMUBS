import FourierPilotCircleTree004233
import FourierPilotCircleTree004234
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004232
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, true]
def state : State := ![2, 3, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree004233.state FourierPilotCircleTree004234.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004233.covered FourierPilotCircleTree004234.covered
#print axioms covered
end FourierPilotCircleTree004232
