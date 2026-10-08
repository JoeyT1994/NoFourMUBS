import FourierPilotCircleTree003931
import FourierPilotCircleTree003940
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003930
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![14, 10, 4, 4, 7]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree003931.state FourierPilotCircleTree003940.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003931.covered FourierPilotCircleTree003940.covered
#print axioms covered
end FourierPilotCircleTree003930
