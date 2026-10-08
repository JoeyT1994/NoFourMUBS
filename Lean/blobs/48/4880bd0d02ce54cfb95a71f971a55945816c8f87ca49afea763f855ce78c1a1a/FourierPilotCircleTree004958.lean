import FourierPilotCircleTree004959
import FourierPilotCircleTree004960
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004958
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, true]
def state : State := ![6, 3, 2, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree004959.state FourierPilotCircleTree004960.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004959.covered FourierPilotCircleTree004960.covered
#print axioms covered
end FourierPilotCircleTree004958
