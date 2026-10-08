import FourierPilotCircleTree001071
import FourierPilotCircleTree001072
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001070
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, false]
def state : State := ![7, 7, 4, 5, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree001071.state FourierPilotCircleTree001072.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001071.covered FourierPilotCircleTree001072.covered
#print axioms covered
end FourierPilotCircleTree001070
