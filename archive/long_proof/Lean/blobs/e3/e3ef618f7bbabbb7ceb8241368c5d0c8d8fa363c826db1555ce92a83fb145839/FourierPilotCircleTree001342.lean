import FourierPilotCircleTree001343
import FourierPilotCircleTree001376
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001342
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![7, 4, 4, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree001343.state FourierPilotCircleTree001376.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001343.covered FourierPilotCircleTree001376.covered
#print axioms covered
end FourierPilotCircleTree001342
