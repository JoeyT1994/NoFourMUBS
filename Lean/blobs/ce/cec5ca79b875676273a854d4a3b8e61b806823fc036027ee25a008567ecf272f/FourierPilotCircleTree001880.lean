import FourierPilotCircleTree001881
import FourierPilotCircleTree001902
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001880
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, true, false]
def state : State := ![23, 24, 16, 26, 21]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree001881.state FourierPilotCircleTree001902.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001881.covered FourierPilotCircleTree001902.covered
#print axioms covered
end FourierPilotCircleTree001880
