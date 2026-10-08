import FourierPilotCircleTree004343
import FourierPilotCircleTree004394
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004342
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, true]
def state : State := ![6, 2, 2, 2, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree004343.state FourierPilotCircleTree004394.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004343.covered FourierPilotCircleTree004394.covered
#print axioms covered
end FourierPilotCircleTree004342
