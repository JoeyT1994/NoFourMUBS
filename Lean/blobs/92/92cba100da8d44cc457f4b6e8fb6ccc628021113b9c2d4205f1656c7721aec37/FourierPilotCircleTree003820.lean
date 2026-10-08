import FourierPilotCircleTree003821
import FourierPilotCircleTree003822
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003820
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![10, 6, 7, 7, 4]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree003821.state FourierPilotCircleTree003822.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003821.covered FourierPilotCircleTree003822.covered
#print axioms covered
end FourierPilotCircleTree003820
