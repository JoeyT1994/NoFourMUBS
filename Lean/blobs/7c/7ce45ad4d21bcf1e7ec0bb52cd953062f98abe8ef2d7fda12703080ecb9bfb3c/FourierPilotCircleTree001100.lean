import FourierPilotCircleTree001101
import FourierPilotCircleTree001102
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001100
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, false]
def state : State := ![114, 114, 64, 87, 87]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree001101.state FourierPilotCircleTree001102.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001101.covered FourierPilotCircleTree001102.covered
#print axioms covered
end FourierPilotCircleTree001100
