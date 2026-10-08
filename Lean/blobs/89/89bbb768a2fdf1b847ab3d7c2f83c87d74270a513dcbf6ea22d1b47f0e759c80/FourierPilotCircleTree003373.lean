import FourierPilotCircleTree003374
import FourierPilotCircleTree003377
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003373
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, true]
def state : State := ![11, 4, 7, 7, 6]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree003374.state FourierPilotCircleTree003377.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003374.covered FourierPilotCircleTree003377.covered
#print axioms covered
end FourierPilotCircleTree003373
