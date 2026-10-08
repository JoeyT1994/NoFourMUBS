import FourierPilotCircleTree003820
import FourierPilotCircleTree003861
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003819
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![5, 6, 7, 7, 4]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree003820.state FourierPilotCircleTree003861.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003820.covered FourierPilotCircleTree003861.covered
#print axioms covered
end FourierPilotCircleTree003819
