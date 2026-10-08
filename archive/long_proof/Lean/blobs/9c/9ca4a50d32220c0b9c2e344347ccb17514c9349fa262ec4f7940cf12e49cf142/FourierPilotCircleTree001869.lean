import FourierPilotCircleTree001870
import FourierPilotCircleTree001871
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001869
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, true, false]
def state : State := ![11, 12, 4, 6, 5]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree001870.state FourierPilotCircleTree001871.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001870.covered FourierPilotCircleTree001871.covered
#print axioms covered
end FourierPilotCircleTree001869
