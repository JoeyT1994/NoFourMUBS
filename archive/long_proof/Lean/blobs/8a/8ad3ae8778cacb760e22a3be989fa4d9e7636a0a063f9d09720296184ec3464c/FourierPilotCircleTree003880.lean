import FourierPilotCircleTree003881
import FourierPilotCircleTree003918
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003880
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![13, 10, 4, 4, 7]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree003881.state FourierPilotCircleTree003918.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003881.covered FourierPilotCircleTree003918.covered
#print axioms covered
end FourierPilotCircleTree003880
