import FourierPilotCircleTree003092
import FourierPilotCircleTree003093
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003091
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![14, 4, 7, 12, 11]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree003092.state FourierPilotCircleTree003093.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003092.covered FourierPilotCircleTree003093.covered
#print axioms covered
end FourierPilotCircleTree003091
