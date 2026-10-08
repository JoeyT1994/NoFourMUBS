import FourierPilotCircleTree003375
import FourierPilotCircleTree003376
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003374
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, true]
def state : State := ![11, 4, 7, 7, 12]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree003375.state FourierPilotCircleTree003376.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003375.covered FourierPilotCircleTree003376.covered
#print axioms covered
end FourierPilotCircleTree003374
