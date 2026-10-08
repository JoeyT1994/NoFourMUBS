import FourierPilotCircleTree001485
import FourierPilotCircleTree001486
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001484
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, false]
def state : State := ![41, 58, 54, 31, 44]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree001485.state FourierPilotCircleTree001486.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001485.covered FourierPilotCircleTree001486.covered
#print axioms covered
end FourierPilotCircleTree001484
