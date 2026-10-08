import FourierPilotCircleTree001893
import FourierPilotCircleTree001898
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001892
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, true, false]
def state : State := ![93, 98, 32, 107, 42]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree001893.state FourierPilotCircleTree001898.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001893.covered FourierPilotCircleTree001898.covered
#print axioms covered
end FourierPilotCircleTree001892
