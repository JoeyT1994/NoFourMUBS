import FourierPilotCircleTree001621
import FourierPilotCircleTree001622
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001620
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, false]
def state : State := ![2, 2, 2, 3, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree001621.state FourierPilotCircleTree001622.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001621.covered FourierPilotCircleTree001622.covered
#print axioms covered
end FourierPilotCircleTree001620
