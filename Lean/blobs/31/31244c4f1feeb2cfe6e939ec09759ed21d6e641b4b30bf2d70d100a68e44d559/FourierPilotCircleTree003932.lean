import FourierPilotCircleTree003933
import FourierPilotCircleTree003934
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003932
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![14, 10, 8, 8, 7]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree003933.state FourierPilotCircleTree003934.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003933.covered FourierPilotCircleTree003934.covered
#print axioms covered
end FourierPilotCircleTree003932
