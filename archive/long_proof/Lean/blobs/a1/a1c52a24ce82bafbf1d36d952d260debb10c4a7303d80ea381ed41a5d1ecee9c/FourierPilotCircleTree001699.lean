import FourierPilotCircleTree001700
import FourierPilotCircleTree001719
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001699
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, false]
def state : State := ![20, 30, 27, 53, 52]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree001700.state FourierPilotCircleTree001719.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001700.covered FourierPilotCircleTree001719.covered
#print axioms covered
end FourierPilotCircleTree001699
