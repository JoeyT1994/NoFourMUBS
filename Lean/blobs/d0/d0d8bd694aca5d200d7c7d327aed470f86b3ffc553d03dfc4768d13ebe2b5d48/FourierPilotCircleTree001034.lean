import FourierPilotCircleTree001035
import FourierPilotCircleTree001046
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001034
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, false]
def state : State := ![38, 38, 63, 52, 52]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree001035.state FourierPilotCircleTree001046.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001035.covered FourierPilotCircleTree001046.covered
#print axioms covered
end FourierPilotCircleTree001034
