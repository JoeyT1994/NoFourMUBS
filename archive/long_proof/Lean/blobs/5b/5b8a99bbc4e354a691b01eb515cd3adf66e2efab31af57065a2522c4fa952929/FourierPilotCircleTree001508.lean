import FourierPilotCircleTree001509
import FourierPilotCircleTree001510
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001508
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, false]
def state : State := ![3, 2, 2, 2, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree001509.state FourierPilotCircleTree001510.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001509.covered FourierPilotCircleTree001510.covered
#print axioms covered
end FourierPilotCircleTree001508
