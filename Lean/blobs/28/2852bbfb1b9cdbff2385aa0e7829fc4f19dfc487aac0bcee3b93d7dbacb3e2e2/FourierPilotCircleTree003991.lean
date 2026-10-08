import FourierPilotCircleTree003992
import FourierPilotCircleTree003999
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003991
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![3, 3, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree003992.state FourierPilotCircleTree003999.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003992.covered FourierPilotCircleTree003999.covered
#print axioms covered
end FourierPilotCircleTree003991
