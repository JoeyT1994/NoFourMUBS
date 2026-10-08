import FourierPilotCircleTree001882
import FourierPilotCircleTree001883
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001881
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, true, false]
def state : State := ![46, 24, 16, 26, 21]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree001882.state FourierPilotCircleTree001883.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001882.covered FourierPilotCircleTree001883.covered
#print axioms covered
end FourierPilotCircleTree001881
