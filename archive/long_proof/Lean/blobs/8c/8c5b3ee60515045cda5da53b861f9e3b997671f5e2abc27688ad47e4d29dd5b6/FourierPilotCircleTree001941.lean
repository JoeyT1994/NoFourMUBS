import FourierPilotCircleTree001942
import FourierPilotCircleTree001967
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001941
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, true, false]
def state : State := ![24, 23, 15, 21, 13]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree001942.state FourierPilotCircleTree001967.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001942.covered FourierPilotCircleTree001967.covered
#print axioms covered
end FourierPilotCircleTree001941
