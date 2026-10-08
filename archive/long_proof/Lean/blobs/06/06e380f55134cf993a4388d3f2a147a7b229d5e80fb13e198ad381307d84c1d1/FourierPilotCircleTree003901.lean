import FourierPilotCircleTree003902
import FourierPilotCircleTree003909
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003901
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![111, 80, 32, 34, 61]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree003902.state FourierPilotCircleTree003909.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003902.covered FourierPilotCircleTree003909.covered
#print axioms covered
end FourierPilotCircleTree003901
