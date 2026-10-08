import FourierPilotCircleTree001019
import FourierPilotCircleTree001020
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001018
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, false]
def state : State := ![9, 9, 7, 13, 13]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree001019.state FourierPilotCircleTree001020.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001019.covered FourierPilotCircleTree001020.covered
#print axioms covered
end FourierPilotCircleTree001018
