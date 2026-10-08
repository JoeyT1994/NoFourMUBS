import FourierPilotCircleTree002577
import FourierPilotCircleTree002582
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002576
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, false]
def state : State := ![37, 54, 41, 51, 32]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree002577.state FourierPilotCircleTree002582.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002577.covered FourierPilotCircleTree002582.covered
#print axioms covered
end FourierPilotCircleTree002576
