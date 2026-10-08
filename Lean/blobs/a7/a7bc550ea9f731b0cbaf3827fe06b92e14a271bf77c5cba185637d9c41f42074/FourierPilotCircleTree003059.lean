import FourierPilotCircleTree003060
import FourierPilotCircleTree003069
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003059
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![111, 40, 63, 34, 61]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree003060.state FourierPilotCircleTree003069.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003060.covered FourierPilotCircleTree003069.covered
#print axioms covered
end FourierPilotCircleTree003059
