import FourierPilotCircleTree003362
import FourierPilotCircleTree003363
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003361
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, true]
def state : State := ![2, 2, 3, 3, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree003362.state FourierPilotCircleTree003363.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003362.covered FourierPilotCircleTree003363.covered
#print axioms covered
end FourierPilotCircleTree003361
