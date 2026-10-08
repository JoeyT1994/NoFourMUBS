import FourierPilotCircleTree000925
import FourierPilotCircleTree000992
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000924
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, false]
def state : State := ![3, 3, 3, 2, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree000925.state FourierPilotCircleTree000992.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000925.covered FourierPilotCircleTree000992.covered
#print axioms covered
end FourierPilotCircleTree000924
